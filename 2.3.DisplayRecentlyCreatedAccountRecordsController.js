({
    doInit : function(component, event, helper) {
        var action = component.get("c.callAccountRecords");
        action.setCallback(this, function(resp){
            var returnValue = resp.getReturnValue();
            component.set("v.accounts", returnValue);
        });
        $A.enqueueAction(action);
    }
})