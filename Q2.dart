//**************************Q2****************************** */
/*Create a BankAccount class with balance and accountNumber properties, and methods called deposit() and
withdraw() that modify the balance property. Then create a CheckingAccount class that inherits from 
BankAccount and has a transactionLimit property. Override the withdraw() method in the CheckingAccount class
to check if the withdrawal amount is within the transaction limit before modifying the balance property.*/



import 'dart:io';

class BankAccount {
  int balance;
  int accountNumber;
  int amountWithdraw;
  int amountDeposit;
  int balanceAfterDeposit;

  BankAccount(this.balance, this.accountNumber, this.amountWithdraw,
      this.amountDeposit, this.balanceAfterDeposit);

  deposit() {
    print("$amountDeposit amount deposited successfully!");
    print("Your updated balance is $balanceAfterDeposit");
  }

  withdraw() {
    print("Enter the amount you want to withdraw: ");
    print("$amountWithdraw amount Withdraw successfully!");
  }
}

class CheckingAccount extends BankAccount {
  int transactionLimit;

  CheckingAccount(int balance, int accountNumber, int amountWithdraw,
      int amountDeposit, int balanceAfterDeposit, this.transactionLimit)
      : super(balance, accountNumber, amountWithdraw, amountDeposit,
            balanceAfterDeposit);

  withdraw() {
    print("Your balance was $balance");
    if (amountWithdraw > balanceAfterDeposit) {
      print("You exceed the transaction amount limit");
    } else {
      print("$amountWithdraw amount Withdraw Successfully!");
    }
    int amountAfterWithdraw = balance - amountWithdraw;
    print("Your balance after withdraw is $amountAfterWithdraw");
  }
}

main() {
  CheckingAccount ca =
      CheckingAccount(50000, 2624545, 500, 100000, 2000, 52000);
  ca.deposit();
  ca.withdraw();
}
