@isTest
public class Script_1_10_test {
@isTest
    public static void main()
    {
        Account a= new Account(name='test');
        insert a;
        
        Contact c= new contact(lastname='test',accountid=a.id);
        insert c;
        
        Opportunity o= new Opportunity();
        o.name='tet';
        o.AccountId=a.id;
        o.StageName='Closed lost';
        o.CloseDate=date.today();
        insert o;
        
        
        OpportunityContactRole ocr= new OpportunityContactRole();
        ocr.ContactId=c.id;
        ocr.OpportunityId=o.id;
        insert ocr;
        
        Test.startTest();
        Script_1_10.main();
        test.stopTest();
        
        
    }
}