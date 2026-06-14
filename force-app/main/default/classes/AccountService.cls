public with sharing class AccountService {
    public static List<Account> getRecentAccounts(Integer limitCount) {
        return [
            SELECT Id, Name, CreatedDate
            FROM Account
            ORDER BY CreatedDate DESC
            LIMIT :limitCount
        ];
    }

    public static Account createAccount(String name) {
        Account acc = new Account(Name = name);
        insert acc;
        return acc;
    }
}
