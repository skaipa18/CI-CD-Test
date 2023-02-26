({
	handleMethod : function(component, event) {
		var varMessage = event.getParam("message");
        
        var noofEvents = parseInt(component.get("v.numberOfEvents"))+1;
        component.set("v.eventmsg",varMessage);
        component.set("v.numberOfEvents",noofEvents);
        console.log('No Of Events ',noofEvents)
	}
})