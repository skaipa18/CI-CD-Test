public class VFPCLSCoversAllScenarios {

    public VFPCLSCoversAllScenarios() {

    }


    public VFPCLSCoversAllScenarios(ApexPages.StandardController controller) {

    }


    public string Firstname{get;set;}
    public string Lastname{get;set;}
    public string Fullname{get;set;}
    public string AccName{get;set;}
    public string AccPhone{get;set;}
    public list<Account> DataList{get;set;}
    
    public void FullNameFun(){
        
        Fullname = Firstname+Lastname;
    }
        
    public void SaveTheData(){
        
        Account acc = new Account();
        acc.Name = AccName;
        acc.Phone = AccPhone;
        
        insert acc;
    }
    public void TableData(){
        
        DataList = [select name,id,description from account limit 10];
        
    }
}