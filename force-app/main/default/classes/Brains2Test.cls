@isTest
public class Brains2Test {
	@isTest
    public static void ques2Test(){
        List<Opportunity> op2=new List <Opportunity>();
        Opportunity op=new Opportunity();
        op.Name='Test';
        op.StageName='Closed won';
        op.CloseDate=date.today();
        op2.add(op);
        Brains2.ques2(op2);
        
    }
}