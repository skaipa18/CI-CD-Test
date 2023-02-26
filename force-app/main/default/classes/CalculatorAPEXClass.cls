public class CalculatorAPEXClass {

    private integer VarSum;
    private integer VarMultiplication;
    
    public integer sum(integer A,integer B){
        
        VarSum = A+B;
        return VarSum;
    }
    public void multi(integer c,integer d){
         
        VarMultiplication = c*d;
        system.debug('Multiplication Value = '+VarMultiplication);
    }

    void caller(){
        CalculatorAPEXClass obj1 = New CalculatorAPEXClass();
        integer sumvalue = obj1.sum(2,3);
        system.debug('Sum Of = '+sumvalue);
        obj1.multi(5,6);
        
    }


}