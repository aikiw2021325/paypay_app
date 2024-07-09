import 'package:flutter/material.dart';
import 'package:paypay_app/custom_widgets/paddings.dart';

class BalanceButton extends StatelessWidget {
  const BalanceButton({
    super.key,
    required this.money,
    required this.width,
    required this.height,
  });

  final int money;
  final double width;
  final double height;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: height,
        width: width,
        child: Row(
          children: [
            const PaddingM(),
            const Icon(Icons.payment_rounded,size: 40,),
            const PaddingM(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text('PayPay残高',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_sharp)),
                    ],
                  ),
                  Text('$money''円'),
                ],
              ),
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_right_sharp)),
            const PaddingSS(),
          ],
        ),
      ),
    );
  }
}