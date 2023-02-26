trigger TestTriggerClone on TestA__c (before insert) {
TestApexClone.checkCloneTestA(trigger.new);
}