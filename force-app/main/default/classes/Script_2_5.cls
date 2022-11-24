public class Script_2_5 {
    public static void main(){
        List <Account> Ac1=[SELECT name, (SELECT name, Stagename from Opportunities where Stagename='Cloesd won') from Account]; 
        for(Account Op2 : Ac1){
            if(Op2.Opportunities.size()<2){
                System.debug(Op2.name);
            }
        }
    }
}