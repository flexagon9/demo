public class SitePage5Controller {
    private Integer privateValue;
    
    public SitePage5Controller(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}