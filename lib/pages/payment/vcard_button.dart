import 'package:flutter/material.dart';
import 'package:paypay_app/constants/colors_constants.dart';
import 'package:paypay_app/custom_widgets/card_small.dart';

class VcardButton extends StatefulWidget {
  const VcardButton({super.key});

  @override
  State<VcardButton> createState() => _VcardButtonState();
}

class _VcardButtonState extends State<VcardButton> {
  @override
  Widget build(BuildContext context) {
    return const CardSmall(
      color: white, 
      width: 300, 
      height: 50,
      child: Center(child: Text('モバイルVカードを表示する')),
    );
  }
}