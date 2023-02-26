trigger WorkerTrigger on Worker__c (before insert) {
TestApexClone.checkCloneWorker(trigger.new);
}