trigger studentselection on MS_Student_Selection__c (before insert) {

 MSStudentSelection.selectionfunction(Trigger.new);
}