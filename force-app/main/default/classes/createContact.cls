public class createContact {
    public static void main(){
         list<OpportunityLineItem> oplilist=[select id, Opportunity.accountId,Opportunity.account.name from OpportunityLineItem where Opportunity.accountId!=null];
        map<id,list<OpportunityLineItem>> oppmap=new map<id, list<OpportunityLineItem>>();
                map<id,string> Acnamemap=new map<id, string>();

        
        
        for(OpportunityLineItem opli:oplilist){
            if(!oppmap.containsKey(opli.Opportunity.AccountId)){
                oppmap.put(opli.Opportunity.AccountId, new list<OpportunityLineItem>());
            }
            oppmap.get(opli.Opportunity.AccountId).add(opli);
            Acnamemap.put(opli.Opportunity.AccountId,opli.Opportunity.Account.name);
        }
        
        set<id> accId=new set<id>();
        list<contact> cont=new list<contact>();
         for(id ids:oppmap.keySet()){
            System.debug('Account Id '+ids +' Size '+ oppmap.get(ids).size());
             if(oppmap.get(ids).size()>2){
          //       accId.add(ids);
             contact con=new contact();
            
                 con.LastName=Acnamemap.get(ids);
             cont.add(con);   
                 
                 
             }
         }
        insert cont;
             
          /*   list<account> acclist=[Select name from account where id in: accId];
             for(account acc:acclist){
                contact con=new contact();
                 con.LastName=acc.name;
                 con.AccountId=acc.Id;
                 cont.add(con);
             }
             
        
        insert cont;
*/
        
    }
}