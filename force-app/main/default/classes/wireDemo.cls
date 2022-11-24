public class wireDemo {
	@auraEnabled(cacheable=true)
    public static list<contact> getcontact(){
        list<contact> conlist=[SELECT id, name from contact];
        return conlist;
    }
}