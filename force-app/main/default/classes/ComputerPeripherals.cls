public class ComputerPeripherals {
    
    public static boolean isAvailable = false;
    public static boolean isNitAvailable1 = false;
    
    private static string test1;
    
    
    public static void ComputerFunction(list<Computer__c> VarPheriperals){
        DealContractApex.myvar1 = 'kvns';
        //TChandler.isAvailable123 = true;
        
        for(Computer__c Var:VarPheriperals){
            if(Var.RAM_GB__c <= 2 && Var.Processor_Ghz__c <= 2 && Var.HardDiskSize_GB__c <= 50){
                Var.Capcity__c = 'Low Capavity!!!!';
               // isNotAvailable = true;
                
            }
        }
        
    }

}