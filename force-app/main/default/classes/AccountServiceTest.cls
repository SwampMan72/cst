@IsTest
private class AccountServiceTest {
    @TestSetup
    static void makeData() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i));
        }
        insert accounts;
    }

    @IsTest
    static void testGetRecentAccounts() {
        Test.startTest();
        List<Account> result = AccountService.getRecentAccounts(3);
        Test.stopTest();
        Assert.areEqual(3, result.size(), 'Should return 3 accounts');
    }

    @IsTest
    static void testCreateAccount() {
        Test.startTest();
        Account result = AccountService.createAccount('New Test Account');
        Test.stopTest();
        Assert.isNotNull(result.Id, 'Account should have been inserted');
        Assert.areEqual('New Test Account', result.Name, 'Account name should match');
    }
}
