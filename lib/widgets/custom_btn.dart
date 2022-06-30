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
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(double.infinity, height * 0.07),
      ),
      child: Text(
        txt,
        style: TextStyle(fontSize: 20, color: textColor),
      ),
    );
  }
}
