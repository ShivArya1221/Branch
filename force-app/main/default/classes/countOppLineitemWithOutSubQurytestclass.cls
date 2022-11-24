@isTest
public class countOppLineitemWithOutSubQurytestclass {
@isTest
    public static void testmain(){
        Account acc=new Account();
        acc.Name='New Test Class';
        insert acc;
        
        Opportunity opp=new Opportunity();
        opp.Name='Account Test Class';
        opp.CloseDate=date.today();
        opp.AccountId=acc.id;
        opp.StageName='closed won';
        insert opp;
        
        
        Product2 pro=new Product2();
        pro.Name='Product Test Class';
        insert pro;
        
        id pricebookId=test.getStandardPricebookId();
        
        PricebookEntry PE=new PricebookEntry();
        PE.Pricebook2Id=pricebookId;
        PE.Product2Id=pro.Id;
        PE.UnitPrice=20000;
        PE.IsActive=true;
        insert PE;
        
        OpportunityLineItem opli=new OpportunityLineItem();
        opli.Opportunityid=opp.id;
        opli.Product2Id=pro.id;
        opli.PricebookEntryId=PE.id;
        opli.UnitPrice=100;
        opli.Quantity=50;
        opli.Rating__c='4';
        insert opli;
        
        
        test.startTest();
        countOppLineitemWithOutSubQury.main();
        countOppLineItem.main();
        test.stopTest();
    }
}