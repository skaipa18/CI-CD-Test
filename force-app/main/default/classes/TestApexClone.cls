public class TestApexClone {
    
    public static void checkCloneTestA(List<TestA__c> Recs ){
        for(TestA__c Rec : Recs){
        if(Rec.isClone()){
            Rec.EndDate__c = null;           
            system.debug('YES Cloned Record!!!!!!!!');
        }
        }
    }
    
    public static void checkCloneWorker(List<Worker__c> Recs ){
        for(Worker__c Rec : Recs){
        if(Rec.isClone()){
            Rec.Experience__c= 43;
            Rec.Name = 'Cloned From Trigger';
            system.debug('YES Cloned Record!!!!!!!!');
        }
        }
    }
}