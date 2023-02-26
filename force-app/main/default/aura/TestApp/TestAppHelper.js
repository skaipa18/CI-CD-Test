({
	serverCall : function(component) {
		var action = component.get("c.createComputerForm");
        action.setParams({
            rec : component.get("v.computerForm")
        });
        action.setCallBack(this,function(res){
            var status = res.getState();
            if(status == "SUCCESS"){
                var computermakeEmpty = {'sObject':'Computer__c',
                                        'HardDiskSize_GB__c':'',
                    'Processor_Ghz__c':'',
                     'RAM_GB__c':'',
                     'Name':''};
                alert('Record is created Succeefull!!');
            
            }
            else{
                alert('Something went wrong while creating the record');
            }
        });
        $A.enqueueAction(action);
	}
})