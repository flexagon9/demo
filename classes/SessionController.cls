public class SessionController {
     // get session id method
    @AuraEnabled
    public static String getSessionId() {
        return UserInfo.getSessionId();
    }
    
}