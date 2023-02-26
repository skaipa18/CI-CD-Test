public class AccountContactRecentData {
    @AuraEnabled
    public static Map<String,list<sObject>> AccConRecent(){
        
        Map<String,list<sObject>> ObjData = new Map<String,list<sObject>>();
        list<Account> acclist  = [SELECT id,name FROM Account LIMIT 5];
        list<Contact> conlist = [SELECT id,name FROM Contact LIMIT 5];
        list<Lead> leadlist = [SELECT id,Name,Company,Email FROM Lead LIMIT 5];
        list<Account> accconlist  = [SELECT id,Name ,(SELECT Name FROM Contacts) FROM Account LIMIT 5];
        
        ObjData.put('Acc',[SELECT id,name FROM Account LIMIT 5]);
        
        ObjData.put('Con',[SELECT id,name FROM Contact LIMIT 5]);        
        
        
        ObjData.put('Lead',leadlist);
        
        objData.put('AccContact',accconlist);
        return ObjData;
    }
    
}