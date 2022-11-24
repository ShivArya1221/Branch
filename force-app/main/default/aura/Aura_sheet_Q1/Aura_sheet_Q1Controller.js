({
	onClick : function(component, event, helper) {
		var action=component.get('c.main');
        action.setParams({
            acc:component.get('v.InsertAcc')
            
        });
        action.setCallback(this,function(response){
                       alert('success');    
                           
                           });
        $A.enqueueAction(action);
	}
})