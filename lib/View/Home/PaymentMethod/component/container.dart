import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentContainer extends StatelessWidget {
  String assetName;
  Color? color;
  Color? color1;
  Color? color2;
  String title;
  PaymentContainer({Key? key, required this.assetName, required this.color, required this.color2, required this.color1,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Container(
        height: 78.h,
        width: 354.w,
        decoration: BoxDecoration(color: color,borderRadius: BorderRadius.circular(13.r),

        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(children: [
              Image(image: AssetImage(assetName),height: 35.h,width: 45,),
              SizedBox(width: 20.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle( color: color1,fontWeight: FontWeight.w600,fontSize: 13.sp),),
                  SizedBox(height: 5.h,),
                  Text("xxxx xxxx xxxx 0289",style: TextStyle( color: color2,fontWeight: FontWeight.w400,fontSize: 13.sp),),

                ],
              ),
            ],)
          ]),
        ),
      ),
    );
  }
}
