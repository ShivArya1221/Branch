public class Script_1_6 {
    public static void main(){
        List<opportunity> Op1=[SELECT name, closedate from opportunity Where closeDate=TODAY];
        for(opportunity Op:Op1){
            Op.Closedate=Date.newInstance(2022,08,4);	
            Op.name=Op.name+'Updated';
         }
        System.debug(Op1);
       // update Op1;
    }
}