public class Area {
	public static void Shape(decimal s1){
       System.debug('Area of Square'+s1*s1);  
    }
     public static void Shape(decimal length , integer breath ){
        System.debug('Area of Rectangle'+length*breath);  
    }
     public static void Shape(decimal base, decimal height){
        System.debug('Area of Triangle'+(base*height)/2);  
    }
}