public class Site4Cntl {
    private Integer privateValue;
    
    public Site4Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}