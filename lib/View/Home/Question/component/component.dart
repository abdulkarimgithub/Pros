import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TvNumber extends StatelessWidget {
  String text;
   TvNumber({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 156.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r),color: Color(0xffDBDBDB)),
      child: Center(child: Text(text,style: TextStyle(color: Color(0xff264653),fontSize: 18.sp,fontWeight: FontWeight.w500),)),
    );
  }
}
