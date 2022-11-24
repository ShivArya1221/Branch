public class campaignMem {
    public static void main(){
                        
        
        List<Campaign> cplist=[select id,total_member__c,(select id from CampaignMembers) from Campaign];
        for(Campaign c:cplist){
            c.total_member__c=c.CampaignMembers.size();
            
        }update cplist;
        
    }
}