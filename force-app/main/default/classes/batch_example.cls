global class batch_example implements Database.Batchable<sObject>{
   global Database.QueryLocator start(Database.BatchableContext BC){
        Date s = system.today()-10;
       string query1 = 'select id  from Account where createDdate <:s';
        return Database.getQueryLocator(query1);
    }
  global void execute(Database.BatchableContext BC, List<Account>BeforeData){
          if(BeforeData.size()>0)
              System.debug('more1');
     //database.delete (BeforeData, false);
  }
    
    global void execute2(Database.BatchableContext BC, List<Account>AterData){
          if(AterData.size()<0)
               System.debug('more2');
     //database.delete (BeforeData, false);
  }
 global void finish(Database.BatchableContext BC){

   }
}