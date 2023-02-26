({
	myAction : function(component, event, helper) {
		var txt = component.get("v.child1Var");
     component.set(txt,"FROM CHILD !!!!");
	}
})