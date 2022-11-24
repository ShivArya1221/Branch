public class Lwc_sheet_2{
    // @Auraenabled(cacheable=true)
    // public static List<account> fetchAcc()
    // {
    //     List<account> accLst = [select Id,name from account];
    //     //system.debug('accLst= '+accLst);
    //     return accLst; 
    // }
    // @Auraenabled(cacheable=true)
    // public static List<contact> fetchCon(string id)
    // {
    //     List<contact> conLst = [select Id,name from contact where accountId =: id];
    //     //system.debug('conLst= '+conLst);
    //     return conLst; 
    // }
    
    // @Auraenabled(cacheable=true)
    // public static List<Opportunity> fetchoop(string id)
    // {
    //     List<Opportunity> oopLst = [select Id,name from Opportunity where AccountId =: id];
    //     //system.debug('oopLst= '+oopLst);
    //     return oopLst; 
    // }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountList() {
        return [SELECT Id, Name FROM Account];
    }
    @AuraEnabled
    public static List<Contact> getContacts(String accountId){
        return [Select Id,FirstName,LastName,Email,Phone from Contact where accountId=:accountId];
         
    }  
}