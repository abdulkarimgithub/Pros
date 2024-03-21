import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceComponent extends StatelessWidget {
  String assetName;
  String text1;
  String Text2;
   ServiceComponent({Key? key,required this.assetName,required this.text1,required this.Text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Container(
        height: 74.h,
        width: 84.w,
        decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(12.r),
        ),

        child: Column(
          children: [
            Image(image: AssetImage(assetName)),
            SizedBox(height: 8.h,),
            Text(text1,style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w700,fontFamily: "Inter"),),
            Text(Text2,style: TextStyle(color: Colors.white,fontSize: 7.sp,fontWeight: FontWeight.w400,fontFamily: "Inter"),),
          ],
        ),
      ),
    );
  }
}
