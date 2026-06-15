public with sharing class AccountService {
  public static List<Account> getRecentAccounts(Integer limitCount) {
    return [
      SELECT Id, Name, CreatedDate
      FROM Account
      WITH USER_MODE
      ORDER BY CreatedDate DESC
      LIMIT :limitCount
    ];
  }

  public static Account createAccount(String name) {
    Account acc = new Account(Name = name);
    Database.insert(acc, AccessLevel.USER_MODE);
    return acc;
  }

  public static Integer getAccountCount() {
    return [SELECT COUNT() FROM Account WITH USER_MODE];
  }
}
