public class Demo {
    public void mainValueMethod(){
        String websiteUrl='www.apex.com';
        System.debug('Before value call'+websiteUrl);
        passByValueCall(websiteUrl);
        System.debug('After Value call'+websiteUrl);
    }
    private void passByValueCall(String websiteUrlvalue){
        websiteUrlvalue='www.saleforce.com';
        // System.debug('After1 Value call'+ websiteUrlvaluel);
    }
}