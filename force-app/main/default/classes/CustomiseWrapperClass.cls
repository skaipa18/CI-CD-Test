public class CustomiseWrapperClass {
    
  public string place;
    
    public static list<wrapper> getDisplay(){
        list<wrapper> rapper = new list<wrapper>();
       wrapper wrp = new wrapper();
        wrp.name = 'KVNS KUMAR';
       wrp.enabled = false;
       wrp.Acctlist = [SELECT id,name FROM ACCOUNT LIMIT 5];
        wrp.u = [SELECT id,name,email FROM user WHERE id =: userInfo.getUserId()];
        rapper.add(wrp);
        return rapper;
    }
    
  public class wrapper{
        
    public user u{get;set;}
    public List<Account> Acctlist{get;set;}
    public string name{get;set;}
    public boolean enabled{get;set;}
    
    public wrapper(){
        u = new user();
        Acctlist = new list<Account>();
        name = 'Salesforce';
        enabled = true;
    }
  }
    

}