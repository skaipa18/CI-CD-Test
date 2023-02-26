@RestResource(URLMapping='/AcctListForSpecificIdws/*')
global class WebServiceParameterApex2 {
    @HttpGet
    global static Account Acctlistwithparamaters(){
        
        Map<string,string> AcctPar = RestContext.Request.Params;
        Account a = [SELECT id,name FROM Account WHERE id =: AcctPar.get('Id')];
        
        return a;
        
    }

}