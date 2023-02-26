({
	notifierMethod : function(component, event) {
		var compEvent = component.getEvent("compEvent");
        compEvent.setParams({"message":"Message is set From Notifier!!!"});
        console.log(compEvent.getParam("message"));
        compEvent.fire();
	}
})