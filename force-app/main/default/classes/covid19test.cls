@isTest
public class covid19test {
    public integer NumberofPatientInCity=0;
    public static integer NumberofPatientInCountry=0;
	
 @isTest   public static void patientNew(){
       // NumberofPatientInCity++;
       // System.debug('Patient in city'+ NumberofPatientInCity);
        NumberofPatientInCountry++;
        System.assertEquals(1, NumberofPatientInCountry, 'Error');
 }
}