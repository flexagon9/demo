public class SessionController {

    @AuraEnabled
    public static String getSessionId() {
        //comment
        return UserInfo.getSessionId();
    }
    
}