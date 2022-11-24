public class BrainstormingBharatQ1 {
    public static void main(){
        list<Account> aclist=[select id from account limit 5];
        list<contact> conlist=[select id from contact limit 5];
        list<case> caselist=new list<case>();
        integer i =0;
        for(Account ac:aclist)
        {
            case c1=new case();
            c1.Status='new';
            c1.Origin='phone';
            c1.AccountId = aclist[i].id;
            c1.ContactId = conlist[i].id;
            i++;
            caselist.add(c1);
        }
        insert caselist;
        system.debug(caselist);
    }
}