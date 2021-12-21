public class Site42Cntl {
    private Integer privateValue;
    
    public Site42Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}