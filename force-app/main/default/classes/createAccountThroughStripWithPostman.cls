public with sharing class createAccountThroughStripWithPostman {


@AuraEnabled(cacheable=true)
public static boolean checkStripeAccount(id accId){
    boolean check=false;
    Account checkstp=[Select Id, Stricke_Id__c from account where id =:accId];
    if(checkstp.Stricke_Id__c!=null){
        check=true;
    }
    return check;
}



@AuraEnabled
public static list<string> DisplaystripeAccount(string ids){
list<string> stripeCustomerData=new list<string>();
Account accStripe=[Select Id,name, phone, Stricke_Id__c from account where id =:ids];   

    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://api.stripe.com/v1/customers/'+accStripe.Stricke_Id__c);
    request.setMethod('GET');  
            

    request.setHeader('Authorization', 'Bearer sk_test_51M513GSCKBZrodoT6gHADk4XVcK6m3VAjejy4Vqb7SukQIa6qgka57mtw5PtYQwUqoF5Hm4mzYQ2UhTprBQNeCzm00mdmCBARw');

    HttpResponse response = http.send(request);
    getAllData allData=(getAllData)JSON.deserialize(response.getBody(), getAllData.class);

    
    if(allData.deleted==true){
        account acc= new Account();
        acc.id=ids;
        acc.Stricke_Id__c='';
        update acc;
    }else
    { stripeCustomerData.add(allData.id);
        stripeCustomerData.add(allData.name);
        stripeCustomerData.add(allData.phone);
        }

return stripeCustomerData;
}

@AuraEnabled
public static List<string> createStripeAccount(id ids){

    list<string> stripeCustomerData=new list<string>();
    Account accStripe=[Select Id,name, phone, Stricke_Id__c from account where id =:ids];

    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint('https://api.stripe.com/v1/customers');
    request.setMethod('POST');  
            

    request.setHeader('Authorization', 'Bearer sk_test_51M513GSCKBZrodoT6gHADk4XVcK6m3VAjejy4Vqb7SukQIa6qgka57mtw5PtYQwUqoF5Hm4mzYQ2UhTprBQNeCzm00mdmCBARw');

   request.setBody('name='+accStripe.name+ '&phone='+accStripe.phone+ '&email=arya@shivam.com');
    HttpResponse response = http.send(request);
    getAllData allData=(getAllData)JSON.deserialize(response.getBody(), getAllData.class);
    accStripe.Stricke_Id__c=allData.id;
    update accStripe;
    stripeCustomerData.add(allData.id);
    stripeCustomerData.add(allData.name);
    stripeCustomerData.add(allData.phone);
    return stripeCustomerData;
  
} 


public class getAllData{
    
    public string id{get;set;}
    public string name{get; set;}
    public string phone{get; set;}
    public boolean deleted{get;set;}
}


}