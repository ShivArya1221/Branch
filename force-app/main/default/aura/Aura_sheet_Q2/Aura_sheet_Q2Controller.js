({
    doAction : function(component, event, helper) {
        var action=component.get('c.fetchAcc');
        action.setCallback(this,function(response){
            component.set('v.InsertAcc',response.getReturnValue())      
        });
        $A.enqueueAction(action);
    },
    getContactOpp : function(component, event, helper) {
        var action=component.get('c.fetchCon');
        var action1=component.get('c.fetchoop');
        var accountId = component.find('accId').get('v.value');
        action.setParams({
            id : accountId
        });
        action1.setParams({
            id : accountId
        });
        action.setCallback(this,function(response){
            component.set('v.InsertCon',response.getReturnValue())      
        });
        action1.setCallback(this,function(response){
            component.set('v.Insertoop',response.getReturnValue())      
        });
        $A.enqueueAction(action);
        $A.enqueueAction(action1);
    },
        
})