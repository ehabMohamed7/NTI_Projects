import 'Animals.dart';
// import 'bank_account.dart';

void main() {
  // BankAccount b1 = BankAccount();

  // b1.getBalance;

  Lion l = Lion('mufasa', 20, true);
  Elephant e = Elephant('ele', 35, 4);

  l.eat();
  l.roar();

  e.sprayWater();
}
