@RestResource(urlMapping='/myAccountDetails/*')
global class apiFirstCalss {

    @HttpGet
    global static Account accData(){
        RestRequest req=restcontext.request;
        RestResponse rep=restcontext.response;
        String name=req.requestURI.substring(req.requestURI.lastIndexof('/')+1);
        Account acc=[Select name , phone, Website from Account where name=:name];
        return acc;
        
    }
    @HttpPut
    global static account putData(String name){
        Account acc=new Account();
        acc.name='Shivaaam';
        acc.Phone='12345678';
        acc.Website='www.google.com';
        insert acc;
        
        account newacc=new account();
        newacc.id=acc.Id;
        newacc.name=name;
        update newacc;
             return newacc;

    }
    
    @HttpDelete
    global static string maindelete(){
        RestRequest req=restcontext.request;
        RestResponse rep=restcontext.response;
        String phone=req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account acc=[Select id, phone from account where phone=:phone];
        delete acc;
        return 'Done';
    }
}