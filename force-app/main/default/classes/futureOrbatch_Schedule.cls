global class futureOrbatch_Schedule implements schedulable
{
    global void execute(SchedulableContext sc)
    {
        
//  Database.executeBatch(new batch_example());      // for batch
Script_1_10.main(); // for future
       
    }
}

/* Every five minutes
String cron1='0 0  0  * ?';
system.schedule('Asynch7 schedule', cron1, new AsynchSchedule7());
*/


//select name, id, contact.account.id, contact.account.name from contact