public class Aura_sheet_Q2_cls {
    @Auraenabled
    public static List<account> fetchAcc()
    {
        List<account> accLst = [select Id,name from account];
        //system.debug('accLst= '+accLst);
        return accLst; 
    }
    @Auraenabled
    public static List<contact> fetchCon(string id)
    {
        List<contact> conLst = [select Id,name from contact where accountId =: id];
        //system.debug('conLst= '+conLst);
        return conLst; 
    }
    
    @Auraenabled
    public static List<Opportunity> fetchoop(string id)
    {
        List<Opportunity> oopLst = [select Id,name from Opportunity where AccountId =: id];
        //system.debug('oopLst= '+oopLst);
        return oopLst; 
    }
}