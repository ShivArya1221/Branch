public class Tig_3_class {
    public static void main(){
       /* Product2 pro = new Product2();
        pro.name = 'Laptop';
        pro.isActive= true;
        insert pro;
        
        List<id> sid = new List<id>();
        id sp = [select id from Pricebook2 where isStandard=true limit 1].id;
        
        pricebookentry pbe = new pricebookentry();
        pbe.Pricebook2Id=sp;
        pbe.Product2Id=pro.id;
        pbe.UnitPrice= 1;
        insert pbe;  
        
        list<Opportunity> oplist=[SELECT name, (SELECT id from OpportunityLineItems) from Opportunity where stagename='closed won'];
        for(Opportunity op1:oplist){
            for(OpportunityLineItem oli:op1.OpportunityLineItems){
                if(op1.OpportunityLineItems.size()==0){
                    oli.addError('Do not do this');
                }
            }
        } */
        
        list<Account> oplist=[SELECT id,Total_Amount__c ,Remaining_Amount__c, (SELECT id, Amount from Opportunities) from Account where name='abc'];
      //  list<account> ac=new <account>();
        for(Account acc1:oplist){
            for(Opportunity opp:acc1.Opportunities)
            //Opportunity opp=new Opportunity();
            acc1.Remaining_Amount__c=acc1.Total_Amount__c - opp.Amount;
        }
        update oplist;
    }
}