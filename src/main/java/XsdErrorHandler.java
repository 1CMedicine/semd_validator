import org.xml.sax.*;

public class XsdErrorHandler implements ErrorHandler {

    StringBuilder error = new StringBuilder("");

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

    private void handleMessage(String level, SAXParseException exception) throws SAXException {
        int lineNumber = exception.getLineNumber();
        int columnNumber = exception.getColumnNumber();
        String message = exception.getMessage();
        if (error.length() > 0) {
            error.append("\n");
        }
        error.append(":" + level + ": Line: " + lineNumber + " Column: " + columnNumber + " Message: " + message);
    }

    public String getMessage() {
        return error.toString();
    }
} 