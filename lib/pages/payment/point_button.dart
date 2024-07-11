import 'package:flutter/material.dart';
import 'package:paypay_app/custom_widgets/paddings.dart';

class PointButton extends StatelessWidget {
  const PointButton({
    super.key,
    required this.point,
    required this.width,
    required this.height,
  });

  final int point;
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
            const Icon(Icons.local_parking,size: 40,),
            const PaddingM(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    children: [
                      Text('PayPayポイント',
                      style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  Text('$point''pt'),
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