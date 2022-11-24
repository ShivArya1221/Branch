public class Bank_Balance {
    public static void afterInsert(list<Transaction__c> tlist){
        set<id> sid=new set<id>();
        double amount;
        for(Transaction__c i: tlist){
            sid.add(i.Bank_Account__c);
            amount=i.Bank_Amount__c;
        }
        List<Bank_Account__c> Blist=[select Account_Balance__c from Bank_Account__c where id in:sid];
        for(Bank_Account__c j:Blist){
            j.Account_Balance__c =j.Account_Balance__c + amount;
        }
        update Blist;
    }
}