trigger ComputerTrigger on Computer__c (before insert,before update) {

    ComputerPeripherals.ComputerFunction(Trigger.new);
}