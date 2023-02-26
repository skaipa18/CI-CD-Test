trigger ContactTrigger on Contact (after update) {

    List<Contact> ctlisttoupd = new List<Contact>();
    List<Contact> ctlist = new List<Contact>();
    
    ctlist = [Select id,Name,MobilePhone,Department From Contact Where id in: trigger.new];
    if(ApexRecurrive.isfirsttime == false) {
    ApexRecurrive.isfirsttime = true;
        system.debug('Before Size of trigger.new  '+ trigger.new);
    for(Contact c: ctlist){
        system.debug('After Update each Id  '+c.Id);
        //Contact c1 = new Contact(Id = c.Id);
        
        c.Department = 'CFG1AU';
        ctlisttoupd.add(c);
    }
    system.debug('Size Of list   '+ctlisttoupd.size());
    update ctlisttoupd;
    }
}