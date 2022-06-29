import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {Key? key, required this.txt, this.onPress, this.color, this.textColor})
      : super(key: key);
  final String txt;
  final Function()? onPress;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color ?? Colors.blue, borderRadius: BorderRadius.circular(8)),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          txt,
          style: TextStyle(fontSize: 20, color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
