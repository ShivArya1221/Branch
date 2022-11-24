//Q-Delete Contact Data


public class Script_1_5 {
    public static void main(){
        List <Contact> C1=[SELECT id, Contact.Account.name from Contact Where name like '%A%'];
        System.debug(C1);
        //delete C1;
    }
}