public class covid19 {
	public static integer NumberofPatientInCity=0;
    public static integer NumberofPatientInCountry=0;
    
    public void patientNew(){
        NumberofPatientInCity++;
      	 System.debug('Patient in city'+ NumberofPatientInCity);
        NumberofPatientInCountry++;
    	 System.debug('Patient in country'+  NumberofPatientInCountry);
        
    }
}