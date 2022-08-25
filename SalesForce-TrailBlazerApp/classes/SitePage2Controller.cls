public class SitePage2Controller {
    private Integer privateValue;
    
    public SitePage2Controller(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}