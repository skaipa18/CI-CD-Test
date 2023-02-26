public with sharing class lwc_apex_to_get_accountlist {
    @AuraEnabled (cacheable=true)    
    public static List<Account> getAccountList(string strAccountName){
       string strkey = '%'+strAccountName+'%';
       List<Account> acclist = [SELECT Id,Name,AccountNumber FROM Account WHERE name like :strkey];

       return acclist;
    }
   
}