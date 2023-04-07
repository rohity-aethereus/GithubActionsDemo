public class AccountHandler {
	
    //Trailhead Challenge Apex Database 1
    public static Account insertNewAccount(String n) {
        Account ac;
        if(n.length() > 0) {
            ac = new Account(Name = n);
            insert ac;
        }
        else {
            ac = null;
        }
        return ac;
        
    }
}