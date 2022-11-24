@RestResource(urlMapping='/stripe/webhook/v1/*')
global class WebhookStrtoOrg {
@HttpPost
    global static void hookFunction(){
        //list<Account> insertIntoAccount=new list<Account>();
        try{
            RestRequest req=RestContext.request;
            req.addHeader('Content-Type', 'application/json');
            
            string respdata=req.requestBody.toString();
            string objchangestr=respdata.replace('object','objectdata');
            getAllData allData=(getAllData)JSON.deserialize(objchangestr, getAllData.class);
            
            
            
            Account acc=new Account();
            
            acc.name=allData.data.objectdata.name;
            acc.Stricke_Id__c=allData.data.objectdata.id;
            insert acc;
            
           
        }
        catch(Exception Ex)
        {
            System.debug('Error Massage'+ Ex.getMessage());
        }
    }
    
    public class getAllData
    {
        public recordData data{get; set;}    
    }
    public class recordData
    {
        public objectData objectdata{get; set;}
    }
    public class objectData
    {
        public string id{get; set;}
        public string name{get;set;}
    }
    
}