public class CalculatorClass {

    public integer numberA{set;get;}
    public integer numberB{set;get;}
    public integer Total{set;get;}
    
    public static void testFun(){
        Mobile m = new Mobile();
        //m.testNamePro = 'KVNS3'; 
    }
    
    public void SumFun(){
        Total = numberA + numberB;
    }
    public void MulFun(){
        Total = numberA * numberB;
    }
    public void DivFun(){
        Total = (numberA / numberB);
    }
    public void SubFun(){
        Total = numberA - numberB;
    }
}