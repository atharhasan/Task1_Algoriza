import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      required this.txt,
      required this.fontSize,
      this.color,
      this.fontWeight})
      : super(key: key);
  final String txt;
  final double fontSize;
  final Color? color;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color ?? Colors.black),
    );
  }
}
