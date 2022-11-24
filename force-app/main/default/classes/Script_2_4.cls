public class Script_2_4 {
    public static void main(){
        List<Contact> Clst=[SELECT name, Email from Contact];
        for(Contact C1:Clst){
            if(C1.email==userinfo.getUserEmail())
                System.debug(C1.name);
        } 
    }
}