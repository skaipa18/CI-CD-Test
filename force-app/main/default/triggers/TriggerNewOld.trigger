trigger TriggerNewOld on StudentQL__c (before update) {

TestTriggerNewOld.TriggerNewOldTestFun(trigger.new,trigger.oldmap);

}