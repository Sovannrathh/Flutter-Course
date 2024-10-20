enum AccountType {
  Savings,
  Checking,
}

class BankAccount {
  int accountId;        
  String accountOwner;    
  double balance;         
  AccountType accountType; 

  // Constructor
  BankAccount(this.accountId, this.accountOwner, this.accountType, this.balance);

  void withdraw(double amount) {
    if (amount > balance) {
      throw Exception('Insufficient balance to withdraw $amount.');
    }
    balance -= amount; 
  }

  void credit(double amount) {
    balance += amount; // Add the amount to balance
  }
}


class Bank {
  List<BankAccount> accounts = []; 

  BankAccount createAccount(int accountId, String accountOwner, AccountType accountType) {
    // Check for unique account ID
    for (var account in accounts) {
      if (account.accountId == accountId) {
        throw Exception('Account ID $accountId already exists.');
      }
    }

    BankAccount newAccount = BankAccount(accountId, accountOwner, accountType, 0.0);
    accounts.add(newAccount);
    return newAccount; 
  }

  void displayAllAccounts() {
    if (accounts.isEmpty) {
      print('No accounts available.');
    } else {
      for (var account in accounts) {
        print('Account ID: ${account.accountId}, Owner: ${account.accountOwner}, Type: ${account.accountType}, Balance: ${account.balance}');
      }
    }
  }
}
void main() {

  Bank myBank = Bank();

  try {
  
    BankAccount account1 = myBank.createAccount(1001, "Rath", AccountType.Savings);
    BankAccount account2 = myBank.createAccount(1002, "Kim", AccountType.Checking);

    account1.credit(1000.0); 
    account2.credit(500.0);   


    account1.withdraw(200.0);

    print('All Bank Accounts:');
    myBank.displayAllAccounts();
  } catch (e) {
    print('Error: $e');
  }

  try {
    myBank.accounts[0].withdraw(900.0); 
  } catch (e) {
    print('Error: $e'); 
  }
}
