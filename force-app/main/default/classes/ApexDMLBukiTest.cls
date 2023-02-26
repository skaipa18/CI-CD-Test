public without sharing class ApexDMLBukiTest {

    public static void BulkiTestFun(){
        
        Pen__c Obj = new Pen__c();
        Map<id,Pen__c> mapPen = new Map<id,Pen__c>([SELECT id,name FROM Pen__c]);
        //Map<id,Pen__c> mapPen = new Map<id,Pen__c>();
        //mapPen = [SELECT id,name FROM Pen__c];
        integer i;
        list <sObject> InsertPenRecords = new list <sObject>();
        for(i=2;i < 5;i++){
            Obj.Name = 'Emp'+i;
            obj.Price__c = i;
            InsertPenRecords.add(Obj);    
           system.debug('value  ='+InsertPenRecords);
        }
         system.debug('value  ='+InsertPenRecords);
        //  insert InsertPenRecords;
    }

}