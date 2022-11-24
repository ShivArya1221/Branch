public class Script_2_6 {
    public static void main(){
        List<Account> Alst = [SELECT Name, (SELECT name, Stagename, CloseDate from Opportunities Where Stagename='Closed Won' or CloseDate>2020-01-01 or CloseDate<2020-01-30)  from Account];
        for(Account A2:Alst){
            for(opportunity Op1 : A2.Opportunities){
                System.debug(Op1.name);
            }
        }
    }
}