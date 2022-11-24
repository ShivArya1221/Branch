({
    myaction : function(component, event, helper) {

        var pass=component.get("v.name.Password__c");
        var pass1=component.get("v.paswd");
        if(pass == pass1){
            var action = component.get("c.insertCon");
            action.setParams({
                con : component.get('v.name')
            });}
            action.setCallback(this,function(Response){
                var state= Response.getState();
                if(state === 'SUCCESS')
                {
                    alert('Success')
                }
            });
            $A.enqueueAction(action);
        
    }
})
