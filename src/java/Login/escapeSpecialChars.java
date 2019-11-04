package Login;



public class escapeSpecialChars {
    public String escapeSpecialChar(String value){
        String val1=value.replaceAll("\\\\","\\\\\\\\");
        String val=val1.replaceAll("'","\\\\'");
         return val;
    
}
}
