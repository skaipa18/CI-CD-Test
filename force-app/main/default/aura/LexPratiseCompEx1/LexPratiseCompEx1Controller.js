({
	doInit : function(component, event, helper) {
		var action = component.get('c.AccConRecent');
        component.set('v.Leadlist',[{label : 'Name',fieldName : 'Name',type : 'text'},
                          {label : 'Company',fieldName : 'Company',type : 'text'},
                         {label : 'Email',fieldName : 'Email',type : 'email'}]);
        action.setCallback(this,function(response){
             var state = response.getState();
        if(state === "SUCCESS"){
            
            component.set('v.Map',response.getReturnValue());
        }
                           
        })
        
        $A.enqueueAction(action);
	}
})