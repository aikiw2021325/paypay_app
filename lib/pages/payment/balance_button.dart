import 'package:flutter/material.dart';
import 'package:paypay_app/custom_widgets/paddings.dart';

class BalanceButton extends StatefulWidget {
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
  State<BalanceButton> createState() => _BalanceButtonState();
}

class _BalanceButtonState extends State<BalanceButton> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Row(
          children: [
            const PaddingM(),
            const Icon(Icons.featured_play_list_rounded,
            color: Colors.grey,
            size:  40,),
            const PaddingM(),
            Expanded(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text('PayPay残高',
                          style: TextStyle(fontWeight: FontWeight.bold),),
                          const PaddingS(),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(), 
                            onPressed: (){
                              isVisible = !isVisible;
                              debugPrint(isVisible.toString());
                              setState(() {
                              });
                            }, icon: const Icon(
                            
                            Icons.visibility_sharp,
                            size: 20,
                          )),
                        ],
                      ),
                      if(isVisible == true) ...[
                        Text('${widget.money}円'),
                      ]else ... [
                        const Text('*****円'),
                      ]
                    ],
                  ),
                  
                ],
              ),
            ),
            const PaddingL(),
            IconButton(onPressed: (){
              
            }, icon: const Icon(Icons.chevron_right_sharp)),
            const PaddingSS(),
          ],
        ),
      ),
    );
  }
}