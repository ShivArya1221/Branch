public class createContactThroudgPostManApex{
    
    public static void createContact(String lastName, String Phone){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://cloudanalogy-3a4-dev-ed.my.salesforce.com/services/oauth2/token?username=shiv_arya@cloudanalogy.com&password=Transform@r33lCTdI2YHJUS2slP6EIruhwYLO&grant_type=password&client_id=3MVG9wt4IL4O5wvKOxZTmyQFyJgYF_Gglmg6vjZNAxoHkiO9ohUNu8N3YJIOnJ5yCyGlBVt9aNrL.GIvMIeDQ&client_secret=5569AFFEDD6C635A98A3FC57AE6227678287548A31F108DFCB9231F6CADE0C13');
        request.setMethod('POST');  
        HttpResponse response = http.send(request);
        getToken gtoken=(getToken)JSON.deserialize(response.getBody(), getToken.class);
        
        
        if(gtoken.access_token!=null){
            Http http2 = new Http();
            HttpRequest request2=new HttpRequest();
            request2.setEndpoint('https://cloudanalogy-3a4-dev-ed.my.salesforce.com/services/data/v42.0/sobjects/contact');
            request2.setMethod('POST');
            request2.setBody('{"LastName":"'+lastName+'", "Phone":"'+Phone+'","Email":"arya@shivam.com"}');
            request2.setHeader('Content-Type', 'application/json');
            request2.setHeader('Authorization','Bearer '+ gtoken.access_token );
            HttpResponse response2 = http2.send(request2);
            
            
            if (response2.getStatusCode() == 201) {
                System.debug( response2.getStatusCode() + ' ' + response2.getStatus()+' '+response2.getBody());
            } else {
                System.debug(response2.getBody());
            }
        }
    }
    public class getToken{
        public string access_token{get;set;}
    }
    public class getId{
        public string id{get;set;}
    }
}