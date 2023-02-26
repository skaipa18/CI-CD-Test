global class TestPracticeBatchCls implements database.Batchable<sObject>,database.stateful{
    
    global set<id> successIds = new set<id>();
    global set<id> failureIds = new set<id>();
    global integer totalRecords=0;
    
    //isAvailable = true;
    
    global database.QueryLocator start(database.BatchableContext bc){
        system.debug('BATCH CLASS START');
        string myQuery='select id,name,rating,type,industry from Account';
        return database.getQueryLocator(myQuery);
    }
    global void execute(database.BatchableContext bc,List<Account> scope){
        system.debug('BATCH CLASS EXECUTE');
        totalRecords += scope.size();
        List<Account> accList = new List<Account>();
        for(Account eachRec : scope){
             eachRec.industry='Education';
            //allIds.add(a.id);
            accList.add(eachRec); 
        }
       database.SaveResult[] myResult = database.update(scope, false);
        for (integer i=0; i < myResult.size();i++){
            if(myResult.get(i).isSuccess()){
                System.debug('Records are updated Successfully');
                successIds.add(myResult.get(i).id);
            }
            else if(!myResult.get(i).isSuccess()){
                database.Error errors = myResult.get(i).getErrors().get(0);
                failureIds.add(myResult.get(i).id);
                System.debug('Error Occurs While Processing The Record '+errors.getMessage());
            }
    }
    }
    global void finish(database.BatchableContext bc){
       AsyncApexJob a = [SELECT id,status,NumberOfErrors FROM AsyncApexJob WHERE Id =: bc.getJobId()];
        system.debug('STATUS OF BATCH CLASS  '+a.status);
        system.debug('All fails Ids===> ' +failureIds.size());
        system.debug('All success Id---> ' +successIds.size());
        system.debug('Total number of records processed ==> ' +totalRecords);
        
        
    }

}