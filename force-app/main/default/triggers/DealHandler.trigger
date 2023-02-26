trigger DealHandler on Deal_Contract__c (before insert) {
    public static boolean myvar = false;
    List<Deal_Contract__c> dcList = new List<Deal_Contract__c>();
    for(Deal_Contract__c d : trigger.new){
        if(!d.name.contains('DC')){
            d.addError('Deal Contract Name must include DC!');
        }
        else{
            d.Amount__c = 30;
        }
        //dcList.add(d);
    }
  
    
    //insert dcList;
}