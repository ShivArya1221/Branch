public class Script_1_4 {
    public static void main(){
        List<Product2> P1=new List<Product2>();
        List<string> pName = new List<string>{'apple','banana','Mango'};
        List<string> desName = new List<string>{'this is Red','this is White','this is Yellow'};
        for(Integer i=1;i<=5;i++){
            Product2 P2=new Product2();
            P2.Name=pName[i];
            P2.description=desName[i];
            P2.Family='Fruit';
            P1.add(P2);
                        
        }
        insert (P1);
    }
}