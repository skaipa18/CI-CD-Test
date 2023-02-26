trigger LeadTrigger on Lead (after update) {
    List<Account> acctlist = new List<Account>();
    List<RelatedObject__c> relobjs = new List<RelatedObject__c>();
    
    for(Lead l : trigger.new){
    	if(l.Status == 'Working - Contacted1'){
            for(integer i = 1;i<3;i++){
            Account a = new Account();
            a.name = 'New Way Account'+i;
            
            acctlist.add(a);
            
            }
        }  
    }
    
    insert acctlist;
    for(Account a : acctlist){
       RelatedObject__c ro = new RelatedObject__c();
            ro.name = a.name;
            ro.AccountName__c = a.Id;
            relobjs.add(ro); 
    }
    insert relobjs;
    
}