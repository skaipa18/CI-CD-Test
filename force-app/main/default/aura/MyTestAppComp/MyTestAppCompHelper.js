({
	helperMethod : function(component,event,lstr) {
		var llstr = lstr;
        var self = this;
        alert('Called helper Method !!!');
        //component.JSMethod();
        var lfun = component.get('c.JSFun');
        $A.enqueueAction(lfun);
        self.helperMethod1(component,event,lstr);
        //this.helperMethod1(component,event,lstr);
	},
    helperMethod1 : function(component,event,lstr) {
        alert('Helper Called HelperMethod1');
    }
})