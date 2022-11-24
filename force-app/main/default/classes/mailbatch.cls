//Create a batch Class which should run every day 00:00 and fetch all the Leads created yesteday not having a Phone number. 
//Send an Email to the system Admin with the list of those Leads with details



global class mailbatch implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext BC){
        
        return Database.getQueryLocator('select id,name from account where createddate=Last_n_days:10 and phone=null');
    }
    
    global void execute(Database.BatchableContext BC, List<account> leadList){
        
        List<Messaging.SingleEmailMessage> maillist=new list<Messaging.SingleEmailMessage>();
        
        
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        
        string[] emai=new String[]{userinfo.getUserEmail()};
        String s='';
        integer i=1;
        for(Account ld:leadList){
            s+=string.valueOf(i)+' : '+ld.id+'  '+ld.name+'\n'; 
            i++;
        }
        mail.settoaddresses(emai);
        mail.setsubject('Lead list');
        mail.setplaintextbody(s);

        if(!maillist.isempty()){
            Messaging.sendEmail(maillist);
            
            
        }
    }    
    global void finish(Database.BatchableContext BC){
    }
}