public class countOppLineItem {
    public static void main(){
          
        map<id,decimal> olimap=new  map<id,decimal>();
        List<AggregateResult> relatedOpp=[select Opportunity.Accountid accid,count(id) olid from opportunityLineItem group by Opportunity.Accountid];
        
        for(AggregateResult agri:relatedOpp){
            olimap.put((id)agri.get('accid'), (decimal)agri.get('olid'));
        } 
        List<Account> updateField=new List<Account>();
        List<Account> accupdate=[select id,Opp_Count__c from account where id in:olimap.keySet()];
        for(account acc:accupdate){
            acc.Opp_Count__c=olimap.get(acc.id) ;
            updateField.add(acc);
            //update accupdate;
            
        }
        Update updateField;
    }
}