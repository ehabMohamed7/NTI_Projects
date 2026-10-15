abstract class Payment {
  void pay();
}

class CreditCard implements Payment {
  @override
  void pay() {
    print('Payment with CreditCard');
  }
}

class PayPal implements Payment {
  @override
  void pay() {
    print('Payment with PayPal');
  }
}

class CashOneDelivery implements Payment {
  @override
  void pay() {
    print('Payment with CashOneDelivery');
  }
}
