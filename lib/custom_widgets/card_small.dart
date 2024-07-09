import 'package:flutter/material.dart';
import 'package:paypay_app/constants/widgets_constants.dart';

class CardSmall extends StatelessWidget {
  const CardSmall({
    super.key,
    required this.color,
    required this.width,
    required this.height,
    this.child,
  });

  final Color color;
  final double width;
  final double height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radiusS),
          boxShadow: [
            BoxShadow(
              blurRadius: 30.0,
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(20, 20),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
