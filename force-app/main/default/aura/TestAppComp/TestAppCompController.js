({
	getNames : function(component, event, helper) {
        
        var FirstName = component.find("FNId").get("v.value");
        var LastName = component.find("LNId").get("v.value");
        var FullName = component.find("FullNameId");
        FullName.set("v.value",FirstName+','+LastName)
		
	},
    callJS : function(component, event, helper){
        var name = component.get("v.computerForm");
        if($A.util.isEmpty(name.Name) || $A.util.isUndefined(name.Name)){
            alert('Name should not be blank ,Pleas fill!!!!');
            return;
        }
        helper.serverCall(component);
    }
})