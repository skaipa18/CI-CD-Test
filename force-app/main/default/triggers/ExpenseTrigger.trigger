trigger ExpenseTrigger on Expense__c (after update) {

    List<Account> actList = new List<Account>();
    AggregateResult[] ar = [SELECT Account__c actId,sum(HR_Department_Expenses__c) amt
                                    FROM Expense__c WHERE Id in: trigger.new 
                                    GROUP BY Account__c ];
    
    for(AggregateResult each : ar){
        
        Account a = new Account();
        a.Id = (Id)each.get('actId');
        a.Aggregateamount__c = (Decimal) each.get('amt');
        actList.add(a);
        System.debug('Account Results '+a);
        
    }
   update actList;
    //System.debug('List Results '+expenselist);
}