public class Aura_sheet_Q4_cls {
	@auraEnabled
    public static List<String> getObjectName(){
        List<String> objects=new List<String>();
       List<Schema.SObjectType> gd = Schema.getGlobalDescribe().Values();  
        for(SObjectType sot:gd){
           objects.add(sot.getDescribe().getName());
           objects.sort();  
        }
        return objects;
    }
}