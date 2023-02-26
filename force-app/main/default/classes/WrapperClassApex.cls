public class WrapperClassApex {
    @AuraEnabled
    public static wrapperClass getData(){
        
        wrapperClass wcref = new wrapperClass();
        wcref.Acclist = [SELECT Id,Name,Industry  FROM ACCOUNT LIMIT 10];
        wcref.RecSize = wcref.Acclist.Size();
        wcref.Msg = '!!! My Self Swarna Kumar Kaipa !!!';
      
        return wcref;
    
    }
    
    
    public class wrapperClass {
        @AuraEnabled public list<Account> Acclist{get;set;}
        @AuraEnabled public integer RecSize{get;set;}
        @AuraEnabled public string  Msg{get;set;}   
    }

}