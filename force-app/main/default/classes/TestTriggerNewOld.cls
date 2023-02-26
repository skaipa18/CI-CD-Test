public class TestTriggerNewOld {

    public static void TriggerNewOldTestFun(list<StudentQL__c> newrecords,map<id,StudentQL__c> oldrecords){
        
        for(StudentQL__c Varnewlist : newrecords){
            StudentQL__c Varoldlist = oldrecords.get(Varnewlist.Id);
            if(Varnewlist.Standard__c != Varoldlist.Standard__c){
                
                Varnewlist.addError('Should not change!!!!');
            }

}
        
    }     
    
}