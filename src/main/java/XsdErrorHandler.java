import org.xml.sax.*;

public class XsdErrorHandler implements ErrorHandler {


    @Override
    public void warning(SAXParseException exception) throws SAXException {
        handleMessage("WARNING", exception);
    }

    @Override
    public void error(SAXParseException exception) throws SAXException {
        handleMessage("ERROR", exception);
    }

    @Override
    public void fatalError(SAXParseException exception) throws SAXException {
        handleMessage("ERROR", exception);
    }

    private String handleMessage(String level, SAXParseException exception) throws SAXException {
        int lineNumber = exception.getLineNumber();
        int columnNumber = exception.getColumnNumber();
        String message = exception.getMessage();
        throw new SAXException(":" + level + ": Line: " + lineNumber + " Column: " + columnNumber + " Message: " + message);
    }
} 