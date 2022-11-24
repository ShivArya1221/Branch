public class Aura_sheet_Q3_cls {
    @AuraEnabled
    public static void changedt(Id opid, date oppdate){
        Opportunity opp = new Opportunity();
        opp.id=opid;
        opp.CloseDate=oppdate;
        update opp;
    }
}