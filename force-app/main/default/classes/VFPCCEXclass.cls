public class VFPCCEXclass {

    public VFPCCEXclass() {

    }


    public VFPCCEXclass(ApexPages.StandardController controller) {

    }


    public string FirstName{set;get;}
    public string MiddleName{set;get;}
    public string LastName{set;get;}
    public string ShowFullNamestr{set;get;}
    public string GreetingsMsg{set;get;}
    
    public void ShowFullName(){
        
       ShowFullNamestr =  'Mr.  ' + FirstName + MiddleName + LastName;
    }
    public void ShowGreetings(){
        
       GreetingsMsg =  'Hello Good Morning!!!!!!!!';
    }
}