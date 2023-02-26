@isTest
public class MobileTest {
    static testMethod void TestFunction(){
    Mobile__c MobileObj1 = new Mobile__c();
    MobileObj1.Brand__c = 'Samsung';
    MobileObj1.Price__c = 200;
    insert MobileObj1;
    update MobileObj1;
    Mobile__c MobileObj2 = new Mobile__c();
    MobileObj2 = [select Price__c from Mobile__c where id =: MobileObj1.Id];
    System.assertEquals(190,MobileObj2.Price__c);
    }
     static testMethod void TestFunction1(){
    Mobile__c MobileObj1 = new Mobile__c();
    MobileObj1.Brand__c = 'Apple';
    MobileObj1.Price__c = 200;
    insert MobileObj1;
    update MobileObj1;
    Mobile__c MobileObj2 = new Mobile__c();
    MobileObj2 = [select Discount_Status__c from Mobile__c where id =: MobileObj1.Id];
    System.assertEquals('Sorry No Discount On This Brand Before Sale On',MobileObj2.Discount_Status__c);
    }   
        
}