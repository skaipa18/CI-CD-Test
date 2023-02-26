public class TCHanlderApex { 
    
    public static void TCHandlermethod(List<TestChild__c> TCList,map<id,TestChild__c> TCMap){
        //ComputerPeripherals.test1 = 'Test123';
        ComputerPeripherals.isNitAvailable1 = true;
        system.debug('Test Trigger List '+TCList);
        system.debug('Test Trigger Map '+TCMap);
    }

}