public class PenClass {

    
    public static void PenDiscount(list<Pen__c> VarPenRecords){
        Mobile.testName = 'KVNS KUMAR';
        //Mobile.testNameP = 'KVNS KUMAR1';
        for(Pen__c VarRecord:VarPenRecords){
            if(VarRecord.Price__c >= 50 && VarRecord.Price__c <= 100){
                VarRecord.Price__c = VarRecord.Price__c-10;
            }    
            else if(VarRecord.Price__c > 100 && VarRecord.Price__c <= 200){
                VarRecord.Price__c = VarRecord.Price__c-20; 
            }
            else if(VarRecord.Price__c > 200 && VarRecord.Price__c <= 300){
                VarRecord.Price__c = VarRecord.Price__c-30; 
            }
            
        }
        
    }
    
    public static void PenDiscountUpdate(list<Pen__c> VarPenRecords){
        for(Pen__c VarRec:VarPenRecords){
            VarRec.Price__c = VarRec.Price__c - 5;
        }
    }


}