public class RSheetQ2 {
    public static void main(){
       list<contact> conlist=[Select id, name from contact where copy_address_to_contact__c=true and accountId!=null];
        for(contact con:conlist){
            
            System.debug(con);
        }
        
    }
}