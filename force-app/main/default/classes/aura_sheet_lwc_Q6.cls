public with sharing class aura_sheet_lwc_Q6 {
    @AuraEnabled(cacheable=true)
        public static list<Account> fatchAcc(){
        list<Account> acclist=[SELECT Id, name, phone FROM Account];
        return acclist;
    }
}