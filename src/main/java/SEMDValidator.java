import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class SEMDValidator extends HttpServlet {

    final static Logger log = LogManager.getLogger(SEMDValidator.class.getName());
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        PrintWriter out = resp.getWriter();
        out.print("<h1>Hello Alexey</h1>");
        log.info("MyLoggingServlet called");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        super.doPost(req, resp);
    }

}
