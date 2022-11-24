public class countOppLineitemWithOutSubQury {
    public static void main(){
        list<OpportunityLineItem> oplilist=[select id, Opportunity.accountId from OpportunityLineItem where Opportunity.accountId!=null];
        map<id,list<OpportunityLineItem>> oppmap=new map<id, list<OpportunityLineItem>>();
        
      list<account> acclist=new list<account>();        
        
        for(OpportunityLineItem opli:oplilist){
            if(!oppmap.containsKey(opli.Opportunity.AccountId)){
                oppmap.put(opli.Opportunity.AccountId, new list<OpportunityLineItem>());
            }
            oppmap.get(opli.Opportunity.AccountId).add(opli);
        }
        for(id ids:oppmap.keySet()){
            System.debug('Account Id '+ids +'  Size '+ oppmap.get(ids).size());
            account acc=new account();
            acc.id=ids;
            acc.Opp_Count__c=oppmap.get(ids).size();
            acclist.add(acc);
        }
        update acclist;
       
       
    }
}