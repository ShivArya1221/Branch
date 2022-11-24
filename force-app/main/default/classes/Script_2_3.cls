public class Script_2_3 {
    public static void findMonth(){
        Map<String,Integer> Months=new map<String,Integer>();
        Months.put('Jan', 01);
        Months.put('Fab', 02);
        Months.put('Mar', 03);
        Months.put('Apr', 04);
        Months.put('may', 05);
        Months.put('Jun', 06);
        Months.put('Jul', 07);
        Months.put('Aug', 08);
        Months.put('Sep', 09);
        Months.put('Oct', 10);
        Months.put('Nov', 11);
        Months.put('Dec', 12);
        
        DateTime Startdate=DateTime.newInstance(2016,months.get('Jan'),02,6,7,55);
        DateTime Enddate=DateTime.newInstance(2016,months.get('Feb'),05,7,8,55);
        
        System.debug('Year:-');
        System.debug(Enddate.Year() - Startdate.Year());
        System.debug('Month:-');
        System.debug(Enddate.month() - Startdate.month());
        System.debug('Day:-');
        System.debug(Enddate.day() - Startdate.day());
    }
}