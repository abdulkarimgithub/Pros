import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridContainer extends StatelessWidget {
  String assetName;
  String assetName2;
  String title;
  GridContainer(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.assetName2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Stack(
          children: [
            Container(
              height: 111.h,
              width: 114.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetName),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(11.r)),
            ),
            Container(
              height: 111.h,
              width: 114.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetName2),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(11.r)),
            ),
          ],
        ),
        SizedBox(height: 7.h,),
        Text(
          title,
          style: TextStyle(
              color: Color(0xff515151),
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter'),
        ),
      ],
    );
  }
}
