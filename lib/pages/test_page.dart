import 'package:flutter/material.dart';
import 'package:paypay_app/pages/payment/balance_button.dart';
import 'package:paypay_app/pages/payment/money_label.dart';
import 'package:paypay_app/pages/payment/point_button.dart';
import 'package:paypay_app/pages/payment/vcard_button.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MoneyLabel(),
            BalanceButton(
              width: 300,
              height: 80,
              money: 480,
            ),
            PointButton(point: 300, width: 300, height: 80),
            VcardButton()
          ],
        ),
      ),
    );
  }
}
