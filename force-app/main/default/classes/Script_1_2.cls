public class Script_1_2 {
    public static void main(){
        List<Account> A1=[SELECT id from Account limit 1];
        List<Contact>C1=new List<Contact>();
        for(Account Acc:A1){
            Contact con=new Contact();
            con.AccountId=Acc.Id;
            con.LastName='Shiv';
            C1.add(con);
        }
        insert C1;
    }
}