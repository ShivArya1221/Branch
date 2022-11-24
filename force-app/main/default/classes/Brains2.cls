public class Brains2 {

    public static void ques2(List<Opportunity> op3){
        List<Opportunity>oppList= [Select name,Account.Name,(select id,contact.Account.name from OpportunityContactRoles) From Opportunity];
        for(Opportunity opp:op3){
            
            if(opp.OpportunityContactRoles.size()<2){
                system.debug(opp.Name);  
            }
        }
    }
}