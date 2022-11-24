public class Company {
	public String companyName;
    public String ceo;
    public Integer employeeCount;
    public Long revenue;
    
    private List<Client> customers=new List<Client>();
    
    public void addnewcustomer(String name, String Website, String email, Long Phone){
        client customer=new client(name, website, email, phone);
        customers.add(customer);
               
    }
    public void getallcustomer(){
        for(client customer:customers){
            System.debug('Customer name:-' + customer.clientname + 'website:-'+ customer.website +' Email:-'+ customer.email + 'Phone number:- '+ customer.phone);
        }
    }
    
    private class client{
        public string clientname;
        public string website;
        public string email;
        public long phone;
        client(String clientName, String website, String email, long phone){
            this.clientname=clientname;
            this.website=website;
            this.email=email;
            this.phone=phone;
        }
        
    }
    
   
    
}