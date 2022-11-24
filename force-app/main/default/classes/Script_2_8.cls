public class Script_2_8 {
    public static void main(){
        List<AggregateResult> ld=[select owner.name from lead group by owner.name having count(id)>20];
        for(AggregateResult l:ld){
            
            system.debug(l);
            
        } 
    }
}