public class Demo2 {
    public void mainRefMethod(){
        Account a=new Account();
        a.name='apex pro';
        a.website='www.apex.com';
        System.debug('Before Refernce call'+ a);
        passbyRefcall(a);
        System.debug('After Reference'+a);
    }
    private void passbyRefcall(Account a){
        a.Website='www.saleforce.com';
    }
}