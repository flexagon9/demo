public class SitePageController {
    private Integer privateValue;
    
    public SitePageController(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}