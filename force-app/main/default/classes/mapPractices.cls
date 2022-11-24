public class mapPractices { 
    public static void main(){
        list<contact> conList=[Select name from contact where accountId!=null];
        map<id, list<account>> accMap=new map<id, list<account>>();
        for(contact con:conList){
            if(!accMap.containsKey(con.AccountId)){
                accMap.put(con.accountId, new list<account>());
            }
            accMap.get
        }
    }
}
    
    // public static void conNames(){
    //     list<contact> conlist=[Select name, accountId, phone from contact where accountId!=null];
    //     map<id, list<string>> conmap=new map<id, list<string>>();
    //     for(contact con:conlist){
    //         if(!conmap.containsKey(con.accountId)){
    //         conmap.put(con.accountId, new list<string>());
    //         }
    //         string str;
    //         str=con.name+' '+con.Phone;
    //         conmap.get(con.accountId).add(str);
    //     }
    //     for(id ids:conmap.keySet()){
    //         system.debug('id-->'+ ids+' name-->'+conmap.get(ids));
    //     }
   
    
    
   /* public static void accountMAp(){
        map<id, contact>accMap=new map<id, contact>();
        list<contact> conList=[Select accountId,phone, name from contact where accountId!=null];
        for(contact con:conList){
            //if(!accMap.containsKey(con.AccountId)){
                accmap.put(con.AccountId, con);
            
         //   }
            
       //     accMap.get(con.AccountId).add(con);
            
            /*
 list<Account> AccList=[select id,(Select id, name from contacts) from account];
        for(Account acc:AccList){
            for(contact c:acc.contacts){
            if(!accMap.containsKey(acc.id)){
                accmap.put(acc.id,new list<contact>());
            }
            
            accMap.get(con.id).add(c);
            }
*/
            /* if(accMap.containsKey(con.AccountId)){
                List<contact> contlist=accMap.get(con.AccountId);
                contlist.add(con);
                accMap.put(con.AccountId,contlist);
                
         accMap.get(con.AccountId).add(con);
            }
            else{
              accmap.put(con.AccountId, new list<contact>{con});
            }*/ /*}
        for(id ids:accmap.keyset()){
            system.debug('Acc id'+ids+'   list of con : '+accmap.get(ids) +accmap.get(ids).phone);
        }
    }
    */
  /*  Insert Contact list into map contact
   * 
   * public static void contactMap(){
        map<id, list<contact>> conMap=new map<id, list<Contact>>();
        list<contact> conlist=[Select id, name from contact];
        for(contact con:conlist){
            conMap.put(con.id, new list<contact>());
            conMap.get(con.id).add(con);
        }
        for(id ids:conMap.keyset()){
            system.debug('con id'+ids+'   list of con : '+conMap.get(ids));
        }
            
    }*/
    
    //Fatch contact data related to account through map 
    
    
