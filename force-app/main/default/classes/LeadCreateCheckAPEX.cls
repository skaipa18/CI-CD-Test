public class LeadCreateCheckAPEX {
    
    public static void CheckLead(list<lead> VarLeadList){
        
    for(Lead VarL: VarLeadList){
            if(userInfo.getUserEmail()  == 'kumar.kaipa@gmail.com'){
                VarL.Description = 'Note : Leads are being created from vendor';
            }
            else{
                //this code is not needed to be tested as u r not aware about few things 
                VarL.addError('You are not allowed to create lead');
            }
}    
    
    }

}