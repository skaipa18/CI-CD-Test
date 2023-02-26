trigger MobileTrigger on Mobile__c (before insert,before update) {
if(Trigger.isInsert == true){
 Mobile.ongoingsaledicount(Trigger.new);
 }
if(Trigger.isUpdate == true){
 Mobile.Beforesaledicount(Trigger.new);
    
    list<InsurancePolicy1__c> InsP = new list<InsurancePolicy1__c>();
    for (Mobile__c M:Trigger.new){
        InsurancePolicy1__c Obj = new InsurancePolicy1__c();
        obj.Brand__c = M.Brand__c;
        obj.PolicyID__c = 150803;
        InsP.Add(obj);    
    }
    insert Insp;
 }


}