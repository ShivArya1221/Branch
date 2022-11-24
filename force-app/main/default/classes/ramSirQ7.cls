public class ramSirQ7 {
    public static void main(){
        List<string> nameList=new List<string>();
       list<Opportunity> prolist=[Select id, name,(select id,quantity,product2.name from OpportunityLineItems where quantity>100) from Opportunity]; 
        for(Opportunity pro:prolist){
            for(OpportunityLineItem oli:pro.OpportunityLineItems){
            string name=pro.name+' :'+oli.product2.name;
            namelist.add(name);
            }  }
    system.debug(namelist);
    }
}