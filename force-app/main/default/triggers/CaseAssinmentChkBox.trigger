trigger CaseAssinmentChkBox on Case (before insert) {

   // if(Trigger.isBefore == true && trigger.isInsert == true){
        system.debug('Case Details '+trigger.new);
   // }
}