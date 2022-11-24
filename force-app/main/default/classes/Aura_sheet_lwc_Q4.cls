public class Aura_sheet_lwc_Q4 {
	@auraEnabled(cacheable=true)
        public static list<EntityDefinition> fatchObj(){
        list<EntityDefinition> apiname=[SELECT QualifiedApiName FROM EntityDefinition order BY QualifiedApiName];
        return apiname;
    }
}