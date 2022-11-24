public with sharing class aura_sheet_lwc_Q7 {
    public aura_sheet_lwc_Q7() {}


    @AuraEnabled(cacheable=true)
        public static integer main(String username, string password){
        list<contact> fatchCon=[SELECT UserName__c, Password__c FROM contact];
        integer count=0;
        for(contact con:fatchCon){
            if(con.UserName__c==username && con.Password__c==password){
                //system.debug('user login successfully');
                count=1;
            }
        }
        return count;
    }
}