public class Site1Cntl {
    private Integer privateValue;
    
    public Site1Cntl(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}