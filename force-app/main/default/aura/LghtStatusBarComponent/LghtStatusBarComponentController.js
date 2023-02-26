({
	show1 : function(component, event, helper) {
		component.set("v.QuestionNumber","One");
	},
    show2 : function(component, event, helper) {
		component.set("v.QuestionNumber","Two");
	},
    show3 : function(component, event, helper) {
		component.set("v.QuestionNumber","Three");
	},
    
    onclickNext : function(component) {
        var currentQuestion = component.get("v.QuestionNumber");
        if(currentQuestion == 'One') {
           component.set("v.QuestionNumber","Two"); 
        }
        else if (currentQuestion == 'Two') {
            component.set("v.QuestionNumber","Three");
        }
        else if (currentQuestion == 'Three') {
            component.set("v.QuestionNumber","Complete");
            alert("Thanks for your feedback")
        }
        
    },
    
    onclickPrev : function(component) {
        var currentQuestion = component.get("v.QuestionNumber");
        if(currentQuestion == 'Two') {
           component.set("v.QuestionNumber","One"); 
        }
        else if (currentQuestion == 'Three') {
            component.set("v.QuestionNumber","Two");
        }
    },    
        
        close : function(component) {
        window.close();
    }
    
})