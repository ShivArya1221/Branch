public class aurasheetQ6 {
    @AuraEnabled
    public static void insertCon(Contact con){
        
        insert con;
        
        
    }
    public static void fatch(string name, string password )
    {
        integer count=0;
        list<contact> conlist=[SELECT UserName__c,Password__c from contact where UserName__c=:name and Password__c=:password];
        for(contact c:conlist)
        {
            count++;
            
        }
    }
}