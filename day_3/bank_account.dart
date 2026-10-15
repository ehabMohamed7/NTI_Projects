class BankAccount {
  double _balance = 15000;

  set setDeposit(double value) {
    if (value < 0) {
      print('Deposit amount cannot be negative');
    } else {
      _balance += value;
      print(_balance);
    }
  }

  get getBalance => _balance;

  set setWithdraw(double value) {
    if (value < 0) {
      print('Withdraw amount cannot be negative');
    } else if (value > _balance) {
      print('cannot withdraw because it is greater than the current balance');
    } else {
      _balance -= value;
      print(_balance);
    }
  }
}
