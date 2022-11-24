public class NewMailTemp {
    public static void sendEmailWithTemp(){
        List<Messaging.SingleEmailMessage> mailList=new List<Messaging.SingleEmailMessage>();
        EmailTemplate emailTemp=[SELECT Id, Subject, Body FROM EmailTemplate WHERE Name='DDN Email Temp'];
        Contact con=[SELECT Id, Name FROM Contact WHERE LastName='ARYA'];
        Messaging.SingleEmailMessage mail=new Messaging.SingleEmailMessage();
        mail.setTemplateId(emailTemp.Id);
        mail.setTargetObjectId(con.Id);
        mailList.add(mail);
        if(!mailList.isEmpty()){
            Messaging.sendEmail(mailList);
        }
        
    }
}