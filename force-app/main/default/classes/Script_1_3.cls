public class Script_1_3 {
    public static void main(){
        List<Opportunity> Op1=new List<Opportunity>();
        for(Integer i=1;i<=5;i++){
            Opportunity O1=new Opportunity();
            O1.CloseDate=System.today();
            O1.StageName='Closed-won';
            O1.Name='Shiv Arya';
            Op1.add(O1);
        }
        insert Op1;
    }
}