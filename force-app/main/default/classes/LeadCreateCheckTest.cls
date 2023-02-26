@isTest
public class LeadCreateCheckTest {

    static testMethod void LeadCreateCheckFun(){
        
               
        Lead VarL = new Lead();
            VarL.FirstName = 'Robert';
            VarL.LastName = 'Jones';
            VarL.Company = 'IBM';
            insert VarL;
            
            system.assertNotEquals(VarL.id, null);
    }
    
}