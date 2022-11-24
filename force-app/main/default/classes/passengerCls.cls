public class passengerCls {
    public static void main(){
       
        list<Passenger__c> Pass=new list<Passenger__c>();
        List<id> pid= new List<id>();
        for(Integer i=1;i<=3;i++){
            Passenger__c p1=new Passenger__c();
            Flight__c f1=new Flight__c();
            Flight_passenger__c cls=new Flight_passenger__c();
           	cls.Section__c='economy class';
           // p1.Id=f1.id;
            p1.Name='Passenger'+i;
            p1.Age_Group__c='Adult';
            p1.D_O_B__c=system.today();
            insert p1;
            pid.add(p1.id);
        }
       
        for(Integer i=1;i<=3;i++){
            Passenger__c p2=new Passenger__c();
            Flight__c f1=new Flight__c();
            Flight_passenger__c cls=new Flight_passenger__c();
           	cls.Section__c='first class';
            p2.Name='Passenger'+i;
            p2.Age_Group__c='Child';
            p2.D_O_B__c=system.today();
            insert p2;
            pid.add(p2.id);

        }
           for(Integer i=1;i<=3;i++){
            Passenger__c p3=new Passenger__c();
             Flight__c f1=new Flight__c();
             Flight_passenger__c cls=new Flight_passenger__c();
           	cls.Section__c='business class';
        //	 p3.Id=f1.id;
            p3.Name='Passenger'+i;
            p3.Age_Group__c='Infants';
            p3.D_O_B__c=system.today();
            insert p3;
            pid.add(p3.id);
        }
       
    }
}