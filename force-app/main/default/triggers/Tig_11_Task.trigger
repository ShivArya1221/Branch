trigger Tig_11_Task on Account (after insert) {
    for(Account ac:trigger.new){
        if(ac.NumberOfEmployees>100){
            
            Contact con= new Contact();          
            con.lastname='Trigger11';
            con.accountid=ac.id;
            insert con;
            
            Opportunity opp= new Opportunity();
            opp.name='Trigger11';
            opp.accountid=ac.id;
            opp.stagename='Closed won';
            opp.closedate=system.today();
            insert opp;
            
            OpportunityContactRole ocr= new OpportunityContactRole();
            ocr.contactid=con.id;
            ocr.opportunityid=opp.id;
            insert ocr;
            
            case cs= new case();
            cs.contactid=con.id;
            cs.Accountid=ac.id;
            cs.Origin='Email';
            insert cs;
        }
        
    }
}