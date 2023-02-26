global class ScheduledBatchClass implements Schedulable {
    global void execute(SchedulableContext SC){
        BatchApexClass BAC = new BatchApexClass();
        database.executeBatch(BAC, 500);
        
    }

        
}