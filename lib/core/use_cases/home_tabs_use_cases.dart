import 'package:flutter/material.dart';

enum HomeTabEnum { boleka, wallet, payment, zamake }

class HomeTabSub {
  final HomeTabEnum tab;
  HomeTabSub(this.tab);

  String get title {
    switch (tab) {
      case HomeTabEnum.boleka:
        return 'Boleka';
      case HomeTabEnum.wallet:
        return 'Wallet';
      case HomeTabEnum.payment:
        return 'Payment';
      case HomeTabEnum.zamake:
        return "Zama'ke";
    }
  }

  IconData get icon {
    switch (tab) {
      case HomeTabEnum.boleka:
        return Icons.attach_money_rounded;
      case HomeTabEnum.wallet:
        return Icons.wallet;
      case HomeTabEnum.payment:
        return Icons.payment_rounded;
      case HomeTabEnum.zamake:
        return Icons.book_rounded;
    }
  }
}
