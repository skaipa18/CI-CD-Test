public class VFPEXclass {
    
    public string UserName{set;get;}
    public string message{set;get;}
    
    public void ShowMessage(){
        message = 'WelCome '+ UserName;
    }

}