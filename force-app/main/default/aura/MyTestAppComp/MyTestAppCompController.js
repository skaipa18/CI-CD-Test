({
	Init : function(component, event, helper) {
		var lstr = 'Called Init';
        var self = this;
        alert('Called Init Method !!!');
        helper.helperMethod(component,event,lstr);
        //self.JSFun1(component, event, helper);
        //this.JSFun1(component, event, helper);
        var act = component.get('c.JSFun1');
        $A.enqueueAction(act);
	},
    JSFun : function(component, event, helper) {
		var lstr = 'Called JSFun';
        alert('Called JSFun From HELPER !!!');
        
	},
    JSFun1 : function(component, event, helper) {
		var lstr = 'Called JSFun1';
        alert('Called JSFun1 From Controller @@@@');
        
	}
    
})