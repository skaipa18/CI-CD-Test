global class TestBatchCls implements database.Batchable<sObject>,database.stateful {
    
    global set<id> allIds=new set<id>();
    global set<id> allFailedId=new set<id>();
    global set<id> allSuccessId=new set<id>();
    global integer totalSizeRecords=0;
    
    global database.QueryLocator start(database.BatchableContext bc){
        string myQuery='select id,name,rating,phone,MyEmail__c,type,industry from Account';
        return database.getQueryLocator(myQuery);
    }
    //execute Method
    global void execute(database.BatchableContext bc,list<Account> scope){
        totalSizeRecords+=scope.size();
        List<Account> accList = new List<Account>();
        for(Account a:scope){
            a.Industry='Education';
            allIds.add(a.id);
            accList.add(a);
        }
        system.debug('====All Ids===' +allIds);
        
        database.SaveResult[] myResult=database.update(scope,false);
        
        for(Integer i=0; i < myResult.size(); i++) {
        if(myResult.get(i).isSuccess()) {
            System.debug('Records are updated Successfully');
            allSuccessId.add(myResult.get(i).Id);
        } 
        else if(!myResult.get(i).isSuccess()) {
            Database.Error errors =  myResult.get(i).getErrors().get(0);
            System.debug('Error Occurs While Processing The Record'+errors.getMessage());
           // System.debug('Failure Record Ids While Updating'+myResult.get(i).Id);
            allFailedId.add(accList.get(i).Id);
        }
    }
    
    }
  //finish Method  
    global void finish(database.BatchableContext bc){
        system.debug('All fails Ids===> ' +allFailedId);
        system.debug('All success Id---> ' +allSuccessId);
        system.debug('Total number of records processed ==> ' +totalSizeRecords);
        
    }
    
}