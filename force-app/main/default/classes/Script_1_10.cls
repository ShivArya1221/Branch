public class Script_1_10 {
    @future
    public Static void main(){
        List<opportunity> Op1=[SELECT name, Account.name, (SELECT id, contact.account.name from OpportunityContactRoles)
                               from opportunity Where Stagename='Closed Won' or Stagename='Closed lost'];
        for(opportunity op:Op1){
            for(OpportunityContactRole opcr : op.OpportunityContactRoles){
                if(op.account.name==opcr.contact.account.name){
                    System.debug(op.Name);
                }
            }
        }
    }
}