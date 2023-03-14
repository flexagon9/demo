public class SitePage10Controller {
    private Integer privateValue;
    
    public SitePage10Controller(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}