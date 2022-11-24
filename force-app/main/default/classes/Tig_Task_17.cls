// Question-17 (Trigger Sheet)

public class Tig_Task_17 {
    public static void main(){
        List<Contact> C1=[SELECT Account.name, Account.BillingCountry from Contact];
        List<User> U1=[SELECT Id, Name, City, Country FROM User where Id=:UserInfo.getUserId()];
      //  User U1 = [SELECT Id, Name, City, Country FROM User where Id:=UserInfo. getUserId()];
        for(Contact C:C1){
            for(User U:U1){
                if(C.Account.BillingCountry==U.Country){
                    System.debug(C.Account.name);
                }
            }
        }
    }
}