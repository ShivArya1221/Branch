public class Script_2_1 {
    public static void main(){
        Integer n1=0,n2=1,n3,i, count=10;
        System.debug(n1+' '+n2);    
        
        for(i=2;i<count;++i) 
        {    
            n3=n1+n2;    
            System.debug(' ' +n3);    
            n1=n2;    
            n2=n3;    
        }
    }
}