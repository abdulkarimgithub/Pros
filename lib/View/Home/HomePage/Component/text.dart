import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomepageText extends StatelessWidget {
  String text;
  double? fontSize;
  TextDecoration? decoration;
  Color? decorationColor;
   HomepageText({Key? key,required this.text, required this.fontSize, this.decoration,this.decorationColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text( text,
        style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 22.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
            decoration: decoration,
          decorationColor: decorationColor,
        ));
  }
}
