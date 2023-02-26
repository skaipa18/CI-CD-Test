public class VFControllerApex {
    
    public string firstName{set;get;}
    public string message{set;get;}
    
    public void getMessage(){
        message = 'Hai '+firstName+'  '+'Wel On Board';
    }

}