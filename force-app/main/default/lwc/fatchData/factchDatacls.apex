public with sharing class fatchDatacls{
    @auraEnabled(cacheable=true)
    public static list<Account> acclist(String name){
        String newname='%'+name+'%';
        list<Account> acclst=[SELECT id, name from Account WHERE name =:newname];
        return acclst;
    }
}