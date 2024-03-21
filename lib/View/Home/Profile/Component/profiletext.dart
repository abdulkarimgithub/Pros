import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileText extends StatelessWidget {
  String text;


   ProfileText({Key? key, required this.text, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xff7c7c7c),
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Inter',
          fontStyle: FontStyle.normal,
        ));
  }
}
