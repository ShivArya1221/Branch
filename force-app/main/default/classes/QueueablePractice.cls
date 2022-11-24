public class QueueablePractice implements Queueable {
    
    private List<Account> a;
    public QueueablePractice(List<Account> acc){
        this.a=acc;
    }
        
        
    public void execute(QueueableContext qCntxt) {
        for(account acou:a){
            contact c= new Contact();
            c.lastname='test queue';
            c.AccountId=acou.id;
            insert c;
        }    
    }
}