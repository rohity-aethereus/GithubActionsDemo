public class AccountExtension {
    public string accName {get; set;}
    
    public AccountExtension(){
        
    }
    
    public void createAccount() {
        Account acc = new Account();
        acc.Name = accName;//new comment
        insert acc;
    }
}