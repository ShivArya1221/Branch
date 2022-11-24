public with sharing class opportunityController {

    @auraEnabled(cacheable=true)
    public static list<Opportunity> getData(){
        
            return [Select id, account.name, name, closedate, stagename from Opportunity ];
       
    }
    @auraEnabled
    public static list<Opportunity> getStage(list<string> stagevalue){
        return [Select id, account.name, name, closedate, stagename from Opportunity where stagename in: stagevalue and accountid!=null];
    }
    
    @auraEnabled
    public static void deleteRecord(id recId){
     list<Opportunity> recDel=[Select id from Opportunity where id=:recId];
        delete recDel;
    }
    
     @auraEnabled
    public static string changeStage(id stageId, String stage){
     list<Opportunity> changeSt=[Select id, name, StageName from Opportunity where id=:stageId];
        string checkstage;
        for(Opportunity op: changeSt){
            if(op.StageName==stage){
                System.debug('Stage name allready given to you');
                checkstage='false';
            }else{
                op.StageName=stage;
                update changeSt;
                checkstage='true';
            }
   
        }
        return checkstage;
    }
    
    @auraEnabled(cacheable=true)
   public static List<string> StageList()
   {
      List<string> stageList= new List<String>();
      String objectName = 'Opportunity';
      String fieldName ='StageName';
      Schema.SObjectType s = Schema.getGlobalDescribe().get(objectName) ;
      Schema.DescribeSObjectResult r = s.getDescribe() ;
      Map<String,Schema.SObjectField> fields = r.fields.getMap() ;
      Schema.DescribeFieldResult fieldResult = fields.get(fieldName).getDescribe();
      List<Schema.PicklistEntry> ple = fieldResult.getPicklistValues();
      for( Schema.PicklistEntry pickListVal : ple)
      {
         stageList.add(pickListVal.getValue());
      }  
   return stageList;
   }}