@RestResource(URLMapping='/AccountListws/*')
global class WebServiceApex1 {
    @HttpGet
    global static List<Account> AccountListForWS(){
        
        List<Account> AcctList = new List<Account>();
        return AcctList = [SELECT id,Name From Account Limit 10];
        
    }

}