@isTest
public class PenClassTest {
    
    static testMethod void PenClassTestFun(){
        
        Pen__c PenObj = new Pen__c();
        PenObj.Name = 'Swarna';
        PenObj.Price__c = 100;
        insert PenObj;
        Pen__c PenObj2 = new Pen__c();
        PenObj2 = [select Price__c from Pen__c where id =: PenObj.Id];
        system.assertEquals(90,PenObj2.Price__c);
    }
    static testMethod void PenClassTestFun1(){
        
        Pen__c PenObj = new Pen__c();
        PenObj.Name = 'Swarna';
        PenObj.Price__c = 200;
        insert PenObj;
        Pen__c PenObj2 = new Pen__c();
        PenObj2 = [select Price__c from Pen__c where id =: PenObj.Id];
        system.assertEquals(180,PenObj2.Price__c);
    }
    static testMethod void PenClassTestFun2(){
        
        Pen__c PenObj = new Pen__c();
        PenObj.Name = 'Swarna';
        PenObj.Price__c = 300;
        insert PenObj;
        PenObj.Price__c = 400;
        update PenObj;
        Pen__c PenObj2 = new Pen__c();
        PenObj2 = [select Price__c from Pen__c where id =: PenObj.Id];
        system.assertEquals(395,PenObj2.Price__c);
    }
    
}