global class BatchApexClass implements database.Batchable<sObject> {

//start
   // AcountDetailsForPagenation ac = new AcountDetailsForPagenation();
    //acAcountDetailsForPagenation.isBatchRunning = true;
    
    global integer recordsProcessed = 0; 
    global database.QueryLocator start(database.BatchableContext BC){
        AcountDetailsForPagenation.isBatchRunning = true;
        string query = 'select id,name,description from account';
        return database.getQueryLocator(query);
    }

    global void execute(database.BatchableContext BC,list<Account> scope){
        for(Account a :scope){
            if (a.description == 'NA'){
                
                a.description = 'Please Update these records As Soon As possible';
                
            }
            update a;
        }
        
    }
    global void finish(database.BatchableContext BC){
        AcountDetailsForPagenation.isBatchRunning = false;
    }

}