public class MSStudentSelection {

    public static void selectionfunction(list<MS_Student_Selection__c> studentdata){
        for(MS_Student_Selection__c var:studentdata){
            if(var.Age__c >= 30 && var.Experience__c >= 8){
              var.Status__c = 'Selected.';
            }
        }
    }
    
}