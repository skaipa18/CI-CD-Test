trigger AccountTrigger on Account (before update,after update) {
    
    if(trigger.isUpdate && trigger.isBefore) {
    system.debug('Before Trigger   --   '+trigger.new);
    for(Account a : trigger.new){
        
      //  a.Name = 'CFG1';
      a.AccountNumber = '123456789';
        
    }
    }
    
    // 
    if(trigger.isUpdate && trigger.isAfter){
        system.debug('After Trigger  --  '+trigger.new);
    }
}