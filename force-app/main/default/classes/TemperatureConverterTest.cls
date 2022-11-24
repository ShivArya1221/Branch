@isTest 
public class TemperatureConverterTest {
	
 @isTest
    public static void FahrenheitToCelsius() {
       // TemperatureConverter cs=new TemperatureConverter();
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
        }
}