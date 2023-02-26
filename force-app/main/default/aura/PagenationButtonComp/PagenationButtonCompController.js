({
	FirstBtn : function(component, event, helper) {
		component.set("v.CurrentPageNumber",1);
	},
    PrevBtn : function(component, event, helper) {
		component.set("v.CurrentPageNumber",Math.max(component.get("v.CurrentPageNumber") - 1,1));
	},
    NextBtn : function(component, event, helper) {
component.set("v.CurrentPageNumber",Math.min(component.get("v.CurrentPageNumber")+1,
                                             component.get("v.MaxPageNumber")));
	},
    LastBtn : function(component, event, helper) {
		component.set("v.CurrentPageNumber",component.get("v.MaxPageNumber"));
	}



})