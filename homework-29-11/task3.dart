class BankAccount {
  int _accountNumber;
  double _balance;
  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print ("Зачислено на счет: $amount");
    } else {
      print ("Неверная сумма");
    }
  }

  void withdraw(double amount) {
    if (amount > 0) {
      if ((_balance - amount) > 0) {
        _balance -= amount;
        print("Снята сумма: $amount");
      } else {
        print("Недостаточно средств на счету");
      }
    } else {
      print ("Неверная сумма");
    }
  }

  void getBalance() {
    print ("Текущее состояние счета $_accountNumber составляет - $_balance");
  }
}

void main() {
  BankAccount myAccount = BankAccount(2805, 1200);

  myAccount.getBalance();
  myAccount.deposit(-300);
  myAccount.deposit(500);
  myAccount.getBalance();
  myAccount.withdraw(2000);
  myAccount.withdraw(-2000);
  myAccount.withdraw(400);
  myAccount.getBalance();
}