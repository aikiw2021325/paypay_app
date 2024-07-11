import 'package:flutter/material.dart';
import 'package:paypay_app/pages/payment/balance_button.dart';
import 'package:paypay_app/pages/payment/money_label.dart';
import 'package:paypay_app/pages/payment/point_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              MoneyLabel(),
              BalanceButton(width: 300,height: 80,money: 480,),
              PointButton(point: 300, width: 300, height: 80),
            ],
          )
      )
    ));
  }
}
