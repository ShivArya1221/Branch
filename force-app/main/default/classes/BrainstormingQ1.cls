public class BrainstormingQ1 {
    public static void main()
    {
        List<opportunity> opLst = [select name,(select rating__c,product2.Product_Ra__c from opportunityLineItems) from
                                   opportunity];
        for(opportunity op : oplst){
            for(opportunityLineItem opli : op.opportunityLineItems){
                if(opli.Rating__c == '2' && opli.product2.Product_Ra__c == '5 Stars')
                {
                    system.debug(op.name);
                }
            }
        }
        
    }

}