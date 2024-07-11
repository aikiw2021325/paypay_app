import 'package:flutter/material.dart';
import 'package:paypay_app/custom_widgets/paddings.dart';

class MoneyLabel extends StatelessWidget {
  const MoneyLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('利用可能額',
          style: TextStyle(
            color: Colors.black87
          ),
          ),
          PaddingLL(),
          Text('25,497円',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ],
      ),
    );
  }
}