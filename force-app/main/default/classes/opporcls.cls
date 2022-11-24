public class opporcls {
    public static void main(){
        decimal newquantity=0;
        list<Opportunity>opplist=[select name, amount,CloseDate,(select quantity from opportunitylineItems) from Opportunity];
        for(Opportunity opp:opplist){
            for(OpportunityLineItem oplm:opp.opportunitylineItems){
                if(oplm.quantity>20 && opp.CloseDate<system.today()-30 && opp.CloseDate<system.today()){
                    newquantity+=opp.amount;
                    system.debug('Name-->'+opp.Name+'--->  '+opp.Amount);
                }
            }
        }
        system.debug('total amount'+newquantity);
    }
}