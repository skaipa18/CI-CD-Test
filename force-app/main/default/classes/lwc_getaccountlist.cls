public with sharing class lwc_getaccountlist {
    @AuraEnabled (cacheable=true)    
    public static List<Account> getAccountList () {
    
        return [SELECT Id,Name,Phone,Website FROM Account Limit 10];
    }
}