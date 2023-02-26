({
	doInit : function(component, event, helper) {
		var action = component.get("c.getAccData");
        action.setCallback(this,function(a){
              if( a.getState()  == "SUCCESS"){
                  var records = a.getReturnValue();
                  component.set("v.AllAccountData",records);
                  component.set("v.MaxPage",Math.floor((records.length+9)/10));
                  console.log('Inside IF JS  ',a.getReturnValue());
                  helper.renderPage(component);
              }                    
                           
       })
      $A.enqueueAction(action);
        
	},
    
    renderPage : function(component, event, helper){
        helper.renderPage(component);
    }
})