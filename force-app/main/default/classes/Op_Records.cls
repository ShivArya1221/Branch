public class Op_Records {
    public static void addLineItem(List<Opportunity> opList){
        
        if(opList.Size()>0){
            List<OpportunityLineItem> Oli = [select Description,ListPrice,Name,OpportunityId from OpportunityLineItem where  OpportunityId IN : opList];
            
            for(Opportunity op:opList){
                Integer count =0;
                for(OpportunityLineItem o:oli){
                    
                    count++;
                    
                }  
                if(count > 2){
                    op.addError('opportunity cannot be closed');
                } 
                
            }
        }
    }
}