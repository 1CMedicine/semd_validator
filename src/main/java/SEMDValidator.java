import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.MultipartConfigElement;
import javax.servlet.http.*;
import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import javax.xml.XMLConstants;
import javax.xml.validation.*;
import java.util.stream.Collectors;
import org.xml.sax.SAXException;
import org.w3c.dom.Document;
import javax.xml.transform.dom.DOMSource;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.DocumentBuilder;
import java.nio.charset.StandardCharsets;

import org.eclipse.jetty.server.Request;
import java.io.*;
import java.nio.file.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.util.*;
import java.text.SimpleDateFormat;

public class SEMDValidator extends HttpServlet {

    protected String DATA_PATH;
    private String ADMIN_NAME;
    private String ADMIN_PASS;

    final static Logger log = LogManager.getLogger(SEMDValidator.class.getName());
    private static final MultipartConfigElement MULTI_PART_CONFIG = new MultipartConfigElement(System.getProperty("java.io.tmpdir"));
    private HashMap<String, Templates> cacheXslt = new HashMap<String, Templates>(200);
    private HashMap<String, Schema> cacheXsd = new HashMap<String, Schema>(200);

    public void init() throws ServletException {
        super.init();
        System.setProperty("javax.xml.transform.TransformerFactory", "net.sf.saxon.TransformerFactoryImpl");
        ServletConfig config = this.getServletConfig();

        DATA_PATH = config.getInitParameter("DATA_PATH");
        if (DATA_PATH == null)
            throw new ServletException("Servlet param DATA_PATH is not set");

        if (DATA_PATH.charAt(DATA_PATH.length()-1) == '/' || DATA_PATH.charAt(DATA_PATH.length()-1) == '\\')
            DATA_PATH = DATA_PATH.substring(0, DATA_PATH.length()-1);
        log.info("DATA_PATH="+DATA_PATH);

        ADMIN_NAME = config.getInitParameter("ADMIN_NAME");
        if (ADMIN_NAME == null)
            throw new ServletException("Servlet param ADMIN_NAME is not set");
        ADMIN_PASS = config.getInitParameter("ADMIN_PASS");
        if (ADMIN_PASS == null)
            throw new ServletException("Servlet param ADMIN_PASS is not set");
    }
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        boolean user = false;
        if (session != null && session.getAttribute("user") != null) {
            user = true;
        }
        if (req.getServletPath().equals("/send_sch.html")) {
            log.info(req.getServletPath());
            if (user)
                send_sch(req.getContextPath(), resp);
            else
                loginHtml(req.getContextPath(), resp);
        } else if (req.getServletPath().equals("/get_sch_list.html")) { 
            log.info(req.getServletPath());
            if (user)
                get_sch_list(req.getContextPath(), resp);
            else
                loginHtml(req.getContextPath(), resp);
        } else if (req.getServletPath().equals("/send_semd.html")) {
            log.info(req.getServletPath());
            send_semd(req.getContextPath(), resp);
        } else if (req.getServletPath().equals("/login")) { 
            log.info(req.getServletPath());
            login(req, resp);
        } else if (req.getServletPath().equals("/login.html")) { 
            log.info(req.getServletPath());
            loginHtml(req.getContextPath(), resp);
        } else if (req.getServletPath().startsWith("/file/")) { 
            log.info(req.getServletPath());
            download(req.getContextPath(), req.getServletPath(), resp);
        } else {
            log.warn("PAGE NOT FOUND: "+req.getServletPath());
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        if (req.getServletPath().equals("/verify")) { 
            log.info(req.getServletPath());
            verify(req, resp);
        } else if (req.getServletPath().equals("/upload")) { 
            log.info(req.getServletPath());
            HttpSession session = req.getSession(false);
            if (session != null && session.getAttribute("user") != null) 
                upload(req, resp);
            else
                resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Authorization Failed");
        } else {
            log.warn("PAGE NOT FOUND: "+req.getServletPath());
            resp.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    private void loginHtml(final String contextPath, HttpServletResponse resp) 
            throws IOException {

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(String.join("\n"
        , "<head>"
        , "  <title>???????? ?? ?????????????????????????????????? ???????? ????????????????????</title>"
        , "</head>"
        , "<body>"
        , "<H1>???????? ?? ?????????????????????????????????? ???????? ????????????????????</H1>"
        , "<form method='get' action='", contextPath, "/login'>"
        , "  <fieldset>"
        , "  <p><label for='user'>??????:</label><input type='text' name='user'></p>"
        , "  <p><label for='pass'>????????????:</label><input type='password' name='pass'></p>"
        , "</fieldset>"
        , "<p>"
        , " <input type='submit' value='??????????'>"
        , " </p>"
        , "</form>"
        , "</body>"
        , "</html>"));
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) 
            throws IOException {
        String user = req.getParameter("user");
        String password = req.getParameter("pass");
        HttpSession session = req.getSession(true);

        if (user != null && password != null && user.equals(ADMIN_NAME) && password.equals(ADMIN_PASS)) {
            session.setAttribute("user", user);
            get_sch_list(req.getContextPath(), resp);
        } else {
            resp.setHeader("Content-Type", "text/html; charset=UTF-8");
            PrintWriter out = resp.getWriter();
            out.print(String.join("\n"
            , "<html>"
            , " <head>"
            , "  <title>???????????? ??????????????????????</title>"
            , " </head>"
            , " <body>"
            , "  <H1>???????????? ??????????????????????</H1>"
            , " </head>"
            , " <body>"));
        }
    }

    private void verify(HttpServletRequest req, HttpServletResponse resp) 
            throws IOException, ServletException {

        if (req.getContentType() != null && req.getContentType().startsWith("multipart/form-data")) {
            req.setAttribute(Request.MULTIPART_CONFIG_ELEMENT, MULTI_PART_CONFIG);
        }
        resp.setHeader("Content-Type", "text/plain; charset=UTF-8");
        PrintWriter out = resp.getWriter();

        Part filePart = req.getPart("file");
        final String remdtype = req.getParameter("remdtype"); 
        final String verifytype = req.getParameter("verifytype");
        
        try {
            int rt = Integer.parseInt(remdtype);
            if (rt < 1) {
                out.print("remdtype parameter should be greater then 0");
                return;
            }
         }
         catch (NumberFormatException e) {
            out.print("remdtype parameter should be integer");
            return;
         }

         try {
            int vt = Integer.parseInt(verifytype);
            if (vt < 0 || vt > 2) {
                out.print("verifytype parameter should be in (0, 1, 2)");
                return;
            }
         }
         catch (NumberFormatException e) {
            out.print("verifytype parameter should be integer");
            return;
         }

        InputStream fileContent = filePart.getInputStream();
        String xml = new BufferedReader(new InputStreamReader(fileContent, "UTF-8")).lines().collect(Collectors.joining("\n"));
        // remove BOM
        if (xml.startsWith("\uFEFF")) {
            out.print("XML should be without BOM");
            return;
        }

        if (xml.length() < 50) {
            out.print("XML is broken. Length="+xml.length());
            return;
        }
        if (xml.substring(30, 50).indexOf("UTF-8") == -1) {
            out.print("First line should be '<?xml?>' with encoding='UTF-8'");
            return;
        }

        File xsd = new File(DATA_PATH+"/"+remdtype+"/CDA.xsd");
        boolean valid = true;
        if (!xsd.exists() || xsd.isDirectory()) {
            out.print("no xsd - " + DATA_PATH + "/" + remdtype+"/CDA.xsd");
            valid = false;
        } else if (verifytype.equals("0") || verifytype.equals("2")) {
            try {
                xsd(xml, xsd.getAbsolutePath());
            } catch (ParserConfigurationException e) {
                out.print(e.getMessage());
                valid = false;
            } catch (SAXException e) {
                out.print(e.getMessage().replaceAll("\n", "<br>"));
                valid = false;
            }
        }

        if (valid && !verifytype.equals("0")) {
            // remove namespace because schematron validator doesn't see data with any default namespace
            xml = xml.replace("xmlns=\"urn:hl7-org:v3\"", "").replace("xmlns='urn:hl7-org:v3'", "");
            try {
                File folder = new File(DATA_PATH+"/schematrons");
                boolean found = false;
                StringBuffer res = new StringBuffer();
                for (File fileEntry : folder.listFiles()) {
                    if (!fileEntry.isDirectory()) {
                        final String filename = fileEntry.getName();
                        final String ext = filename.substring(filename.length()-4, filename.length());
                        final String name = filename.substring(0, filename.length()-4);
                        if ((name.equals(remdtype) || name.startsWith(remdtype+"_")) && ext.equals(".xsl")) {
                            StringWriter outWriter = new StringWriter();
                            StreamResult result = new StreamResult(outWriter);
                            xslt(new StreamSource(new StringReader(xml)), fileEntry.getAbsolutePath(), result);
                            StringBuffer sb = outWriter.getBuffer();

                            // ???????????????? <?xml version="1.0" encoding="UTF-8"?>
                            if (sb.substring(0, 6).equals("<?xml ")) {
                                int i = sb.indexOf(">", 7)+1;
                                res.append("<sch file=\"");
                                res.append(filename);
                                res.append("\">");
                                res.append(sb.substring(i));
                                res.append("</sch>");
                            }
                            found = true;
                        }
                    }
                }
                if (!found) {
                    out.print("error - no files '/schematrons/"+ remdtype+ "*.xsl'");
                }
                else {
                    out.print("<result>");
                    out.print(res.toString());
                    out.print("</result>");
                }
            } catch (TransformerException e) {
                out.print("error sch transfromation: "+ e.getMessage().replaceAll("\n", "<br>"));
                valid = false;
            }
        } else if (valid) {     // ?????? xsd ????????????????
            out.print("valid");
        }
    }

    private void upload(HttpServletRequest req, HttpServletResponse resp) 
            throws IOException, ServletException {

        if (req.getContentType() != null && req.getContentType().startsWith("multipart/form-data")) {
            req.setAttribute(Request.MULTIPART_CONFIG_ELEMENT, MULTI_PART_CONFIG);
        }
        Part filePart = req.getPart("file");
        final String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        final String remdtype = fileName.substring(0, fileName.length()-4);
        InputStream fileContent = filePart.getInputStream();
        unzip(DATA_PATH, fileContent);

        resp.setHeader("Content-Type", "text/plain; charset=UTF-8");
        PrintWriter out = resp.getWriter();

        try {
            int rt = Integer.parseInt(remdtype);
            if (rt < 1) {
                out.print("remdtype parameter should be greater then 0");
                return;
            }
        }
        catch (NumberFormatException e) {
            out.print("remdtype parameter should be integer");
            return;
        }

        File xsd = new File(DATA_PATH+"/"+remdtype+"/CDA.xsd");
        if (!xsd.exists() ||  xsd.isDirectory()) {
            out.print("no xsd - " + remdtype+"/CDA.xsd");
        } else {
            File folder = new File(DATA_PATH);
            boolean valid = true;
            boolean sch = false;
            for (final File fileEntry : folder.listFiles()) {
                if (!fileEntry.isDirectory()) {
                    final String filename = fileEntry.getName();
                    final String ext = filename.substring(filename.length()-4, filename.length());
                    final String name = filename.substring(0, filename.length()-4);
                    if ((name.equals(remdtype) || name.startsWith(remdtype+"_")) && ext.equals(".sch")) {
                        sch = true;
                        final String xslName = DATA_PATH+"/schematrons/"+name+".xsl";
                        final File xsl = new File(xslName);
                        if (xsl.exists()) {
                            xsl.delete();
                            log.info("Delete file "+xsl);
                        }
                        final String style = getServletContext().getRealPath("/schxslt-1.9.1/2.0/pipeline-for-svrl.xsl");
                        if (style == null) {
                            throw new IOException("Style file not found");
                        }
                        try {
                            xslt(new StreamSource(fileEntry), style, new StreamResult(new FileOutputStream(xsl)));
                        } catch (TransformerException e) {
                            out.print("error sch transfromation: "+ e.getMessage());
                            valid = false;
                        }
                    }
                }
            }
            if (valid && sch)
                out.print("xsd and sch loaded");
            else if (valid)
                out.print("xsd loaded");
        }
    }

    private void send_sch(final String contextPath, HttpServletResponse resp) 
            throws IOException {

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(String.join("\n"
        , "<html>"
        , " <head>"
        , "  <title>???????????????? zip-???????????? ???? ???????????? ?? ??????????????????????</title>"
        , " </head>"
        , " <body>"
        , "  <H1>???????????????? zip-???????????? ???? ???????????? ?? ??????????????????????</H1>"
        , "  <form enctype = 'multipart/form-data'  method='post' action='", contextPath, "/upload'>"
        , "   <input type='file' name='file'/>"
        , "   <input type='submit' value='?????????????????? zip'/>"
        , "  </form>"
        , "<hr>"
        , "<h3>?????????????????? zip-????????????</h3>"
        , "<ul>"
        , "<li>?????? ???????????? - 118.zip, ?????? ?????? ?????????? - <a href='https://nsi.rosminzdrav.ru/#!/refbook/1.2.643.5.1.13.13.11.1520'>?????? ???????? (OID)</a></li>"
        , "<li>118_1.sch - ?????????????????? (???? ????????????????????). ???????????? ?????????? - <a href='https://nsi.rosminzdrav.ru/#!/refbook/1.2.643.5.1.13.13.11.1520'>?????? ???????? (OID)</a>," 
        , "???????????? ?????????? (????????????????????????????) ???????????????????????? ?? ????????????, ?????????? ?????? ???????? ???????? ???????????????????? ?????????????????? ??????????????????????</li>"
        , "<li>118 - ?????????? (??????????????????????). ?????????? - <a href='https://nsi.rosminzdrav.ru/#!/refbook/1.2.643.5.1.13.13.11.1520'>?????? ???????? (OID)</a>.</li>"
        , "<ul>"
        , "<li>CDA.xsd - ?????????? (????????????????????????). ?????? ?????????? ???????????? ???????? ???????????? ??????????</li>"
        , "<li>... - ???????????? xsd ????????, ???? ?????????????? ?????????????????? ???????????????? ??????????. ???????????????? ??????????, ???????????????????????? ???????????????? ???????????? ???????? ??????????????????</li>"
        , "</ul>"
        , "</ul>"
        , "<h2>????. ??????????</h2>"
        , "<a href='", contextPath, "/send_semd.html'>?????????????????? ????????</a><br>"
        , "<a href='", contextPath, "/get_sch_list.html'>???????????????? ?????????????????????? ???????? ?? ??????????????????????</a>"
        , "</body>"
        , "</html>"));
    }

    private void download(final String contextPath, final String servletPath, HttpServletResponse resp) 
            throws IOException {

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(String.join("\n"
        , "<html>"
        , " <head>"
        , "  <title>", servletPath.substring(5), "</title>"
        , " </head>"
        , " <body>"));

        if (servletPath.contains("..")) {
            out.print("ERROR: URL '" + servletPath + "' contains '..'");
        } else {
            final String url = DATA_PATH+servletPath.substring(5);   // 5 - ??????  "/file"
            final int i = servletPath.lastIndexOf("/");     // remove file name
            final String p = contextPath+"/file"+servletPath.substring(5, i+1);   // 5 - ?????? "/file"
            final File file = new File(url);
            if (file.exists()) {
                FileReader fr = new FileReader(file, StandardCharsets.UTF_8);
                BufferedReader reader = new BufferedReader(fr);
                String line = reader.readLine();
                while (line != null) {
                    String str = escapeHTML(p, line);
                    out.print(str);
                    out.print("<br>");
                    line = reader.readLine();
                }
                reader.close();
            } else {
                out.print("File not found - " + servletPath.substring(5));
            }
        }
        out.print(String.join("\n"
        , "</body>"
        , "</html>"));
}

    private void get_sch_list(final String contextPath, HttpServletResponse resp) 
            throws IOException {

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(String.join("\n"
        , "<html>"
        , " <head>"
        , "  <title>???????????? ?????????????????????? xsd, sch ?? ?????????????????????????????? xsl ???? sch</title>"
        , " </head>"
        , " <body>"));

        List<String> list = new ArrayList<String>();
        final File folder = new File(DATA_PATH);
        final File[] fl = folder.listFiles();
        if (fl != null) {
            for (final File fileEntry : fl) {
                if (fileEntry.isFile()) {
                    list.add(fileEntry.getName());
                } else if (fileEntry.isDirectory()) {
                    for (final File fileEntry2 : fileEntry.listFiles()) {
                        if (fileEntry2.isFile() && fileEntry2.getName().compareToIgnoreCase("CDA.xsd") == 0) {
                            list.add(fileEntry.getName()+"/CDA.xsd");
                        }
                    }
                }
            }
        } else {
            throw new IOException("Folder not found: "+DATA_PATH);
        }
        final File folder2 = new File(DATA_PATH+"/schematrons");
        final File[] fl2 = folder2.listFiles();
        if (fl2 != null) {
            for (final File fileEntry : fl2) {
                if (fileEntry.isFile()) {
                    list.add(fileEntry.getName());
                }
            }
        } else {
            throw new IOException("Folder not found: "+DATA_PATH+"/schematrons");
        }
        list.sort(Comparator.naturalOrder());

        out.print(String.join("\n"
        , "<h2>???????????? ?????????????????????? xsd, sch ?? ?????????????????????????????? xsl ???? sch</h2>"
        , "<table><tr><th>File</th><th>Size in bytes</th><th>Upload date</th></tr>"));
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy hh:mm:ss");
        for (Iterator<String> i = list.iterator(); i.hasNext();) {
            String item = i.next();
            String p = DATA_PATH + "/"+item;
            String ext = item.substring(item.length()-3, item.length());
            File file = new File(p);
            if (ext.equals("sch") || ext.equals("xsd")) {
                out.print(String.join("", "<tr><td><a href='./file/", item,"'>", item, "</a></td><td align='right'>", Long.toString(file.length()), "</td><td>", dateFormat.format(file.lastModified()), "</td></tr>"));
            } else if (ext.equals("xsl")) {
                out.print(String.join("","<tr><td>", item, "</td><td></td><td>", dateFormat.format(file.lastModified()), "</td></tr>"));
            }
        }

        out.print(String.join("\n"
        , "</table>"
        , "<h2>????. ??????????</h2>"
        , "<a href='", contextPath, "/send_sch.html'>???????????????? ?????????? ?? ???????????????????? ???? ????????????</a><br>"
        , "<a href='", contextPath, "/send_semd.html'>?????????????????? ????????</a>"
        , "</body>"
        , "</html>"));
    }

    private void send_semd(final String contextPath, HttpServletResponse resp) 
            throws IOException {

        resp.setHeader("Content-Type", "text/html; charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.print(String.join("\n"
        , "<head>"
        , "  <title>?????????????????? ????????</title>"
        , "</head>"
        , "<body>"
        , "<H1>?????????????????? ????????</H1>"
        , "<form enctype = 'multipart/form-data' method='post' action='", contextPath, "/verify'>"
        , "  <fieldset>"
        , "   <p><label for='remdtype'><a href='https://nsi.rosminzdrav.ru/#!/refbook/1.2.643.5.1.13.13.11.1520'>?????? ???????? (OID)</a>:</label><input type='text' name='remdtype'></p>"
        , "   <p><label for='verifytype'>?????? ??????????????????. 0 - xsd, 1 - sch, 2 - ??????:</label><input type='text' name='verifytype' value='2'></p>"
        , "  </fieldset>"
        , "  <p>"
        , "   <input type='file' name='file'>"
        , "   <input type='submit' value='?????????????????? ????????'>"
        , "  </p>"
        , "</form>"
        , "<hr>"
        , "<h2>????. ??????????</h2>"
        , "<a href='", contextPath, "/send_sch.html'>???????????????? ?????????? ?? ???????????????????? ???? ????????????</a><br>"
        , "<a href='", contextPath, "/get_sch_list.html'>???????????????? ?????????????????????? ???????? ?? ??????????????????????</a>"
        , "</body>"
        , "</html>"));
    }

    private static void unzip(final String destinationFolder, InputStream zipFile) 
            throws IOException {

        ZipInputStream zipInput = new ZipInputStream(zipFile);
        ZipEntry entry = zipInput.getNextEntry();
        byte[] buffer = new byte[2048];
           
        while (entry != null) {
            final String entryName = entry.getName();
            final File file = new File(destinationFolder + File.separator + entryName);
                
            if (entry.isDirectory()) {
                Files.createDirectories(file.toPath());
            } else {
                FileOutputStream fOutput = new FileOutputStream(file);
                int count = 0;
                while ((count = zipInput.read(buffer)) > 0) {
                     fOutput.write(buffer, 0, count);
                }
                fOutput.close();
            }
            zipInput.closeEntry();
            entry = zipInput.getNextEntry();
        }
        zipInput.closeEntry();
        zipInput.close();
    }    

    /**
    * getServletInfo<BR>
    * Required by Servlet interface
    */
    public String getServletInfo() {
        return "SEMD Validator";
    }

    /**
    * Apply stylesheet to source document
    */
    private void xslt(StreamSource source, final String style, StreamResult dst)
            throws TransformerException {

        Templates pss = tryXsltCache(style);
        Transformer transformer = pss.newTransformer();
        transformer.transform(source, dst);
    }

    private void xsd(final String xml, final String xsd)
            throws IOException, ParserConfigurationException, SAXException {

        Schema s = tryXsdCache(xsd);
        DocumentBuilderFactory builderFactory = DocumentBuilderFactory.newInstance();
        builderFactory.setNamespaceAware(true);
        DocumentBuilder parser = builderFactory.newDocumentBuilder();
        InputStream stream = new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8));
        Document document = parser.parse(stream);
        Validator validator = s.newValidator();
        validator.setErrorHandler(new XsdErrorHandler());
        validator.validate(new DOMSource(document));
    }

    /**
    * Maintain prepared stylesheets and schemes in memory for reuse
    */
    private synchronized Templates tryXsltCache(final String path) 
            throws TransformerException {

        Templates x = cacheXslt.get(path);
        if (x == null) {
            TransformerFactory factory = TransformerFactory.newInstance();
            x = factory.newTemplates(new StreamSource(new File(path)));
            cacheXslt.put(path, x);
        }
        return x;
    }
    private synchronized Schema tryXsdCache(final String path) 
            throws SAXException {

        Schema s = cacheXsd.get(path);
        if (s == null) {
            SchemaFactory sf = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
            s = sf.newSchema(new StreamSource(new File(path)));
            cacheXsd.put(path, s);
        }
        return s;
    }

    public static String escapeHTML(final String path, final String s) {
        StringBuilder out = new StringBuilder(Math.max(16, s.length()));
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c > 127 || c == '"' || c == '\'' || c == '<' || c == '>' || c == '&') {
                out.append("&#");
                out.append((int) c);
                out.append(';');
            } else if (c == ' ') {
                out.append("&nbsp;");
            } else {
                out.append(c);
            }
        }
        int i1 = out.indexOf("include ");
        if (i1 > 0) {
            int i2 = out.indexOf("schemaLocation", i1+8);
            if (i2 >= 0) {
                int i3 = out.indexOf("&#39;", i2+15);
                if (i3 < 0) {
                    i3 = out.indexOf("&#34;", i2+15);
                }
                int i4 = out.indexOf("&#39;", i3+5);
                if (i4 < 0) {
                    i4 = out.indexOf("&#34;", i3+5);
                }
                if (i3 > 0 && i4 > 0) {
                    String file = out.substring(i3+5, i4);
                    String out2 = out.substring(0, i3+5)+ "<a href='"+path+file+"'>"+file+"</a>"+out.substring(i4);
                    return out2;
                }
            }
        }
        return out.toString();
    }
}
