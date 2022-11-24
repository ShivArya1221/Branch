public class Script_1_And_2 {
}
/* Script 1 All Question
 * 
//Create 20 new Accounts Records in salesforce with atleast 5 fields filled.
//public class Script_1_1 {
    public static void main(){
      List<Account> A1=New List<Account>();
        for(Integer i=1;i<=10;i++){
            Account A2=New Account();
            A2.Name='Shiv'+i;
            A2.AccountNumber='12323435'+i;
            A2.BillingCity='Haridwar'+i;
            A1.add(A2);
        }
        insert A1;
    }
}

//Create 10 Contacts with diferent Account(LookUp) values(Relationship with no same 2 accounts) in them.
public class Script_1_2 {
    public static void main(){
        List<Account> A1=[SELECT id from Account limit 1];
        List<Contact>C1=new List<Contact>();
        for(Account Acc:A1){
            Contact con=new Contact();
            con.AccountId=Acc.Id;
            con.LastName='Shiv';
            C1.add(con);
        }
        insert C1;
    }
}

//Create 20 Opportunity with Closed Date, Stage and Opportyunity Name.
//public class Script_1_3 {
    public static void main(){
        List<Opportunity> Op1=new List<Opportunity>();
        for(Integer i=1;i<=5;i++){
            Opportunity O1=new Opportunity();
            O1.CloseDate=System.today();
            O1.StageName='Closed-won';
            O1.Name='Shiv Arya';
            Op1.add(O1);
        }
        insert Op1;
    }
}

//Create 5 Products with different Product Names, Discrption & Family
public class Script_1_4 {
    public static void main(){
        List<Product2> P1=new List<Product2>();
        List<string> pName = new List<string>{'apple','banana','Mango'};
        List<string> desName = new List<string>{'this is Red','this is White','this is Yellow'};
        for(Integer i=1;i<=5;i++){
            Product2 P2=new Product2();
            P2.Name=pName[i];
            P2.description=desName[i];
            P2.Family='Fruit';
            P1.add(P2);
                        
        }
        insert (P1);
    }
}

//Delete all contacts belonging to Accounts Name FIELD having 'A' in them.
public class Script_1_5 {
    public static void main(){
        List <Contact> C1=[SELECT id, Contact.Account.name from Contact Where name like '%A%'];
        System.debug(C1);
        //delete C1;
    }
}

//Update all Opportunity with future Closed Date by Opportunity Name=Opportunity Name + ' Updated'
public class Script_1_6 {
    public static void main(){
        List<opportunity> Op1=[SELECT name, closedate from opportunity Where closeDate=TODAY];
        for(opportunity Op:Op1){
            Op.Closedate=Date.newInstance(2022,08,4);	
            Op.name=Op.name+'Updated';
         }
        System.debug(Op1);
       // update Op1;
    }
}

// Display the current salesforce user details 'Name', 'Number' & 'EmailId' and Current Company information.
public class Script_1_7 {
    public static void main(){
        System.debug(Userinfo.getName());
        System.debug(Userinfo.getUserEmail());
        System.debug(Userinfo.getOrganizationName());
    }
}

//Print the Account Names in Alphabetical accending order.
public class Script_1_8 {
    public static void main(){
	List <Account> A1=[SELECT name from Account Order By name];
    for(Account A2:A1){
        System.debug(A2);
    }
    }
}

//"Print the Account Name in reverse order Ex: Name='Company' => 'ynapmoC'"
public class Script_1_9 {
    public static void main(){
        List<Account> A1=[SELECT name from Account];
        for(Account A2:A1){
            System.debug(A2.name.reverse());
        }
    }
}

//Write a script to get all the opportunity name if opportunity' account name is same as the ContactRole Account name and Opportunity is Closed won or closed lost.
public class Script_1_10 {
    @future
    public Static void main(){
        List<opportunity> Op1=[SELECT name, Account.name, (SELECT id, contact.account.name from OpportunityContactRoles)
                               from opportunity Where Stagename='Closed Won' or Stagename='Closed lost'];
        for(opportunity op:Op1){
            for(OpportunityContactRole opcr : op.OpportunityContactRoles){
                if(op.account.name==opcr.contact.account.name){
                    System.debug(op.Name);
                }
            }
        }
    }
}*/



/*
Script 2 All Question
WAP to enter a startDate='06:07:55 2-jan-2016' & endDate='07:08:55 5-feb-2016' and display the difference between two dates in Years, months, days, hours, minutes,seconds.
public class Script_2_3 {
    public static void findMonth(){
        Map<String,Integer> Months=new map<String,Integer>();
        Months.put('Jan', 01);
        Months.put('Fab', 02);
        Months.put('Mar', 03);
        Months.put('Apr', 04);
        Months.put('may', 05);
        Months.put('Jun', 06);
        Months.put('Jul', 07);
        Months.put('Aug', 08);
        Months.put('Sep', 09);
        Months.put('Oct', 10);
        Months.put('Nov', 11);
        Months.put('Dec', 12);
        
        DateTime Startdate=DateTime.newInstance(2016,months.get('Jan'),02,6,7,55);
        DateTime Enddate=DateTime.newInstance(2016,months.get('Feb'),05,7,8,55);
        
        System.debug('Year:-');
        System.debug(Enddate.Year() - Startdate.Year());
        System.debug('Month:-');
        System.debug(Enddate.month() - Startdate.month());
        System.debug('Day:-');
        System.debug(Enddate.day() - Startdate.day());
    }
}

Write a Script to get all the Contacts having same email as any Salesforce User.Email

public class Script_2_4 {
    public static void main(){
        List<Contact> Clst=[SELECT name, Email from Contact];
        for(Contact C1:Clst){
            if(C1.email==userinfo.getUserEmail())
                System.debug(C1.name);
        } 
    }
}

Create several Accounts and Opportunites and products. Write a Script to get all the Accounts having more than 2 Opportunites with Closed Won."

public class Script_2_5 {
    public static void main(){
        List <Account> Ac1=[SELECT name, (SELECT name, Stagename from Opportunities where Stagename='Cloesd won') from Account]; 
        for(Account Op2 : Ac1){
            if(Op2.Opportunities.size()>2){
                System.debug(Op2.name);
            }
        }
    }
}

Write a script to get all the Account having more than 10 opportunities whose status is closed won and the close date is between one month..

public class Script_2_6 {
    public static void main(){
        List<Account> Alst = [SELECT Name, (SELECT name, Stagename, CloseDate from Opportunities Where Stagename='Closed Won' or CloseDate>2020-01-01 or CloseDate<2020-01-30)  from Account];
        for(Account A2:Alst){
            for(opportunity Op1 : A2.Opportunities){
                System.debug(Op1.name);
            }
        }
    }
}

Create a look up[Lead] on product so that Products come over in related list of a Lead.  Write script to create 3 Leads and 5 Products with Lead lookup field.

public class Script_2_7 {
    public Static void main(){
        List<Lead> L1=new List<Lead>();
        
        for(Integer i=1;i<=3;i++){
            
            Lead L=new Lead();
            L.NumberOfEmployees=i;
            L.City='haridwar';
            
            L1.add(L);
        }
        insert L1;
        List<Product2> P1=new List<Product2>();
        
        for(Lead ld:L1){
            for(Integer i=1;i<=5;i++){
                Product2 P=new Product2();
                p.Id=ld.Id;
                P.Name='Red'+i;
                P.Family='Colour';
                P1.add(P);
            }
        }
        insert P1;
    }
}







*/