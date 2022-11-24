public class inlineRecordDemo {
@auraEnabled(cacheable=true)
    public static list<account> accfun(){
        list<account>acclist=[Select name, website, phone from account];
        return acclist;
    }
}