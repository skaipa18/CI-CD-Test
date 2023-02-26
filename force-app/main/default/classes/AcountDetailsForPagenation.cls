public class AcountDetailsForPagenation {
    
    public static boolean isBatchRunning = false;
    //@AuraEnabled
    public static list<Account> getAccData(){
        
        return [SELECT Name,Industry,Phone FROM ACCOUNT LIMIT 100];
    }
    
}