public class SitePage4Controller {
    private Integer privateValue;
    
    public SitePage4Controller(){
        privateValue = 0;
    }
    
    public pageReference updateValue() {
        privateValue++;
        
        return null;
    }

}