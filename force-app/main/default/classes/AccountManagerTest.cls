@isTest
public with sharing class AccountManagerTest {

    static Id createAccountwithContacts() {
        //creates an account with an associated contact record
        Account a = new Account(Name='Rohit Test Account');
        insert a;
        Contact c = new Contact(LastName='Palkar', FirstName='Sourabh', Account = a);
        insert c;
        return a.Id;
        
    }

    @isTest static void testgetAccountById() {
        Id recordId = createAccountwithContacts();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://'+URL.getOrgDomainUrl().toExternalForm()+'/services/apexrest/Accounts/'
            + recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccount = AccountManager.getAccount();
        // Verify results
        System.assert(thisAccount != null);
        System.assertEquals('Rohit Test Account', thisAccount.Name);
    }
}