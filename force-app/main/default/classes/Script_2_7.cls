public class Script_2_7 {
    public Static void main(){
        List<Lead> L1=new List<Lead>();
        
        for(Integer i=1;i<=3;i++){
            
            Lead L=new Lead();
            L.NumberOfEmployees=i;
            L.City='haridwar';
            
            L1.add(L);
        }
        insert L1;
        List<Product2> P1=new List<Product2>();
        
        for(Lead ld:L1){
            for(Integer i=1;i<=5;i++){
                Product2 P=new Product2();
                p.Id=ld.Id;
                P.Name='Red'+i;
                P.Family='Colour';
                P1.add(P);
            }
        }
        insert P1;
    }
}