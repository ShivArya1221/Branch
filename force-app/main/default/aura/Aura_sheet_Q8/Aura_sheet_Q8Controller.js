({
	doAction : function(component, event, helper) {
		var action=component.get("c.fetchAcc");
        action.setCallback(this,function(response){
            component.set('v.InsertAcc',response.getReturnValue())      
        });
        $A.enqueueAction(action);
	},
    
    contactCreate : function(component, event, helper) {
		var action=component.get("c.insertCon");
        action.setParams({
            con: component.get('v.conObj')
        });
        $A.enqueueAction(action);
	}
})