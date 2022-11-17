public class Site10Cntl {
    private Integer privateValue;
    
    public Site10Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}