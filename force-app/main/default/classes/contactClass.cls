public class contactClass {
  @auraEnabled
    public static list<contact> conlist(string name){
      
        list<contact> conlst=[SELECT id,Lastname from contact where name=:name];
        system.debug('lst: '+conlst);
        return conlst;
    }
}