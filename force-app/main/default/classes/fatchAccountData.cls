public class fatchAccountData {
    @auraEnabled(cacheable=true)
    public static list<Account> acclist(String name){
        String newname='%'+name+'%';
        list<Account> acclst=[SELECT id, name from Account WHERE name like :newname];
        return acclst;
    }
    
        @auraEnabled(cacheable=true)
    public static list<contact> conlist(String acid){
        list<contact> conlist=[SELECT id, name from contact WHERE accountid=:acid];
        return conlist;
    }
    
        @auraEnabled(cacheable=true)
    public static list<opportunity> opplist(String acid){
       
        list<opportunity> opplist=[SELECT id, name from opportunity WHERE accountid= :acid];
        return opplist;
    }
}