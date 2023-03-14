public class Site2Cntl {
    private Integer privateValue;
    
    public Site2Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}