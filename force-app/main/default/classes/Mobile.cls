public class Mobile {
    
    public static string testName;
    private static string testNamePri;
    protected string testNamePro;
    class innerclass{
        public void method(){
        testName = 'Inner-KVNS';
            testNamePri = 'Innner-KVNS1';
            MObile m = new Mobile();
            m.testNamePro = 'Inner-KVNS2';
        }
    }
    public static void ongoingsaledicount(list<Mobile__c> VarMobile){
        
        
        
        //CalculatorClass CC = new CalculatorClass();
        CalculatorClass.testFun();
        for(Mobile__c Var:VarMobile){
            Var.TestMPField__c = 'Social;TestUser';
            
        }
    }   
    public static void Beforesaledicount(list<Mobile__c> VarMobile){
        testName = 'KVNS';
        testNamePri = 'KVNS1';
        Mobile m = new Mobile();
        m.testNamePro = 'KVNS2';
        for(Mobile__c Var:VarMobile){
            if(Var.Brand__c == 'Samsung'){
                Var.Price__c = Var.Price__c - (Var.Price__c*5)/100;
                Var.Discount_Status__c = 'Congratulations : 5% Discount Applied';
            }
            else{
                Var.Discount_Status__c = 'Sorry No Discount On This Brand Before Sale On';
            }   
        
        }
    }
    
    
    
}