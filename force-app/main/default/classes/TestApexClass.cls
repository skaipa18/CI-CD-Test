public class TestApexClass {
    
    @AuraEnabled
    public static void createComputerForm(Computer__c rec){
        
        if(rec.Name != ''){
            insert rec;
        } 
    }

}