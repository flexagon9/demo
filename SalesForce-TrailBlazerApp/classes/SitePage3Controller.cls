public class SitePage3Controller {
    private Integer privateValue;
    
    public SitePage3Controller(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}