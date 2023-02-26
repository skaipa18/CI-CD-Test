trigger PriceDisc on Parker_Inc__c (Before Insert) {

PriceFieldUpdate.DiscountApply(Trigger.new);

}