abstract class BankAccount {
  int _accNo;
  String _accHolder;
  double _balance;

  BankAccount(this._accHolder, this._accNo, this._balance);

  void withdraw(double amount);

  void deposit(double amount);

  int get getAccountNumber {
    return _accNo;
  }

  set setAccountNumber(int newNumber) {
    _accNo = newNumber;
  }

  String get getAccountHolder {
    return _accHolder;
  }

  set setAccountHolder(String newHolder) {
    _accHolder = newHolder;
  }

  double get getBalance {
    return _balance;
  }

  set setBalance(double newBalance) {
    _balance = newBalance;
  }
}

class SavingAccount extends BankAccount {
  int withdrawalTime = 0;

  SavingAccount(super._accHolder, super._accNo, super._balance);

  @override
  void deposit(double amount) {
    super.setBalance = _balance + amount;
  }

  @override
  void withdraw(double amount) {
    if (withdrawalTime < 3) {
      super.setBalance = _balance - amount;
      withdrawalTime++;
    } else {
      print("You have reached your withdrawal limit for month");
    }
  }

  double calculateInterest() {
    return 0.02 * getBalance;
  }
}

class CheckingAccount extends BankAccount {
  CheckingAccount(super._accHolder, super._accNo, super._balance);

  @override
  void deposit(double amount) {
    super.setBalance = _balance + amount;
  }

  @override
  void withdraw(double amount) {
    if (_balance - amount < 500) {
      print("The balance cannot exceed minimum requirement which is 500");
      return;
    }
    super.setBalance = _balance - amount;
  }
}

class PremiumAccount extends BankAccount {
  PremiumAccount(super._accHolder, super._accNo, super._balance);

  @override
  void deposit(double amount) {
    super.setBalance = _balance + amount;
  }

  @override
  void withdraw(double amount) {
    if (_balance - amount < 10000) {
      print("The balance cannot exceed minimum requirement which is 500");
      return;
    }
    super.setBalance = _balance - amount;
  }

  double calculateInterest() {
    return 0.05 * getBalance;
  }
}
