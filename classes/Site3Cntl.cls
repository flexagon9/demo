public class Site3Cntl {
    private Integer privateValue;
    
    public Site3Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}