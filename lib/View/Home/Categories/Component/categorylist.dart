import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryList extends StatelessWidget {
  String text;
   CategoryList({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.infinity.w,
      decoration: BoxDecoration(color: Color(0xff264653),borderRadius: BorderRadius.circular(8.r)),
      child:  Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 9.sp,
              color: Colors.white),
        ),
      ),
    );
  }
}
