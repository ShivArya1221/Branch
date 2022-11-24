public class beerShopcls {
@auraEnabled(cacheable=true)
    
    public static list<Beer_Shop__c> beerlist(){
      list<Beer_Shop__c> beerlist=[Select name, Price__c, Quantity__c, Company_Name__c from Beer_Shop__c];  
        system.debug(beerlist);
         return beerlist;
    }
   @auraEnabled
    public static  list<Beer_Shop__c> main(String beerName){
         String brname= beerName+'%';
        list<Beer_Shop__c> beerlist=[Select name, Price__c, Quantity__c, Company_Name__c from Beer_Shop__c where name like:brname];

     
         return beerlist;
    }
    @auraEnabled
    public static void deleteBeermain(id beerId){
         list<Beer_Shop__c> deleteBeer=[Select id from Beer_Shop__c where id=:beerId]; 
      delete deleteBeer;
    }
   
}