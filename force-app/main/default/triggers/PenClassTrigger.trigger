trigger PenClassTrigger on Pen__c (before insert,before update) {

    if (Trigger.isInsert == true){
        PenClass.PenDiscount(Trigger.new);
    }
   else if(Trigger.isUpdate == true){
        PenClass.PenDiscountUpdate(Trigger.new);
    }
}