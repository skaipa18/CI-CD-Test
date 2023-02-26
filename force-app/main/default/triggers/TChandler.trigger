trigger TChandler on TestChild__c (after insert,after update) { 
    public static boolean isAvailable123 = false;
  //  ComputerPeripherals.isAvailable = false;
//TCHanlderApex.TCHandlermethod(trigger.new,trigger.newMap);
    Set<id> childIds = new Set<id>();
    set<id> testActRelIds = new set<id>();
    List<TestParent__c> AccRecs = new List<TestParent__c>();
    for(TestChild__c eachRec : trigger.new){
        childIds.add(eachRec.id);
        testActRelIds.add(eachRec.TestParent__c);
    }
    AggregateResult[] results = [SELECT TestParent__c pid,sum(Amount__c) amt,max(LastModifiedDate) ldt
                                 FROM TestChild__c WHERE TestParent__c IN : testActRelIds  GROUP BY TestParent__c];
    

 for(AggregateResult ar:results){
       system.debug('Each Aggregate Rec  '+ar);
        TestParent__c eachParentRec = new TestParent__c();
        eachParentRec.id = (Id)ar.get('pid');
        eachParentRec.AllAmountChild__c = integer.valueOf(ar.get('amt'));
        eachParentRec.LastChildCreate_Update__c = date.valueOf(ar.get('ldt'));
        AccRecs.add(eachParentRec);
    }
    
    update AccRecs;
    
}