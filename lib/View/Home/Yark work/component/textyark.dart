import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextYark extends StatelessWidget {
  String text;
  Color? color;
  double? fontSize;
  TextYark({Key? key, required this.text, this.color , this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
          fontStyle: FontStyle.normal,
        ));
  }
}
