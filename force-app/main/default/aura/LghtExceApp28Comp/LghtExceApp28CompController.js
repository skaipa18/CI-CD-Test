({
	getDisplay : function(component, event, helper) {
		var lEnterName = component.find("EN").get("v.value");
        var lPrice = component.find("EP").get("v.value");
        var lout=component.find("OT");
        lout.set("v.value",lEnterName+lPrice);
        var llEnterName = component.get("v.outtext");
      
        component.set("v.outtext","false");
        var leventSorceName = event.getSource().get("v.name");
        
        console.log('leventSorceName '+leventSorceName);
        component.set("v.Displaymsg","If You Want to see Submit Button ");
        component.set("v.InitialValue","90009")
	},
    
    demoDisplay : function(component, event, helper) {
		
        component.set("v.outtext","true");
        component.set("v.Displaymsg","After Click To Submit");
        component.set("v.InitialValue","80008")
        
   
	}
})