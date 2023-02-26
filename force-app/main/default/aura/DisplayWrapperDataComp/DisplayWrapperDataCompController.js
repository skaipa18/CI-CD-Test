({
	doInit : function(component, event, helper) {
        
        var action = component.get("c.getData");
        action.setCallback(this,function(a){
            
            if(a.getState() === "SUCCESS"){
                
              component.set("v.WrapperClassData",a.getReturnValue()); 
            }
            
        })
		$A.enqueueAction(action);
	},
    DeleteRecords : function(component, event, helper) {
        
        var action = component.get("c.selected");
        action.setCallback(this,function(a){
            
            if(a.getState() === "SUCCESS"){
                
              component.set("v.WrapperClassData",a.getReturnValue()); 
            }
            
        })
		$A.enqueueAction(action);
	}
})