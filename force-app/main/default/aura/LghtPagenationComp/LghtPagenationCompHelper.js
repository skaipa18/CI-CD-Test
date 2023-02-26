({
	renderPage : function(component) {
		var records = component.get("v.AllAccountData"),
            PageNumber = component.get("v.PageNumber"),
            PageRecords = records.slice((PageNumber - 1) * 10,PageNumber * 10);
            
        component.set("v.CurrentAccRec",PageRecords);
        
	}
})