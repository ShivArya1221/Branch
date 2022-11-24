public class Aura_sheet_Q8_cls {
     @Auraenabled
    public static List<account> fetchAcc()
    {
        List<account> accLst = [select Id,name from account];
        //system.debug('accLst= '+accLst);
        return accLst; 
    }
    @Auraenabled
    public static void insertCon(contact con)
    {
        insert con; 
    }

}