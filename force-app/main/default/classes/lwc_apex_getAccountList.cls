public class lwc_apex_getAccountList {
    @Auraenabled
    public static List<Account> getAccountListImperative(string strname){       
      string searchString = '%' + strname + '%';  
     return  [SELECT Id,Name FROM Account WHERE Name like :searchString];
        
    }
    @Auraenabled(cacheable = true)
    public static List<Account> getAccountListWire(string strname){       
      string searchString = '%' + strname + '%';  
     return  [SELECT Id,Name FROM Account WHERE Name like :searchString];
        
    }

}