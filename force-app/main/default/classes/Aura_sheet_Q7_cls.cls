public class Aura_sheet_Q7_cls {
	@auraEnabled(cacheable=true)
    public static list<contact> fatchdata(){
        list<contact> conlist=[SELECT id, name, phone from contact limit 5];
        return conlist;
    }
}