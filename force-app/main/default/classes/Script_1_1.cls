public class Script_1_1 {
    public static void main(){
      List<Account> A1=New List<Account>();
        for(Integer i=1;i<=10;i++){
            Account A2=New Account();
            A2.Name='Shiv'+i;
            A2.AccountNumber='12323435'+i;
            A2.BillingCity='Haridwar'+i;
            A1.add(A2);
        }
        insert A1;
    }
}