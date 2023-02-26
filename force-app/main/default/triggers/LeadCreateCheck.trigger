trigger LeadCreateCheck on Lead (before insert) {

    if(trigger.IsBefore == true && trigger.isInsert == true ){       
        LeadCreateCheckAPEX.CheckLead(Trigger.New);
    }
    
}