import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pros/View/Home/Servicepage/component/text.dart';

class ContainerFormate extends StatelessWidget {
  const ContainerFormate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 144.h,
      width: 278.w,
      decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(9.r)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Column(children: [

          Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage("assets/images/Group 6.png"),maxRadius: 20,),
              SizedBox(width: 9.w,),
              Column(
                children: [
                  Text("Daid Jackson",style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w700,fontFamily: "Inter"),),
                  Row(children: [
                    Icon(Icons.star,color: Colors.orange, size: 15,),
                    Icon(Icons.star,color: Colors.orange, size: 15,),
                    Icon(Icons.star,color: Colors.orange, size: 15,),
                    Icon(Icons.star,color: Colors.orange, size: 15,),
                    Icon(Icons.star,color: Colors.white38, size: 15,),
                  ],)
                ],
              ),
              SizedBox(width: 20.w,),
              Text("01 sep 2023 00:22",style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.w700,fontFamily: "Inter"),),
            ],
          ),
          SizedBox(height: 10.h,),

    Text(" Styla Johnson \$12/hr Gardne  nisl vel dui feugiat scelerisque. Reviews (300+) Daid Jacksonsep 202 non tempor libero. Book now", style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 9.sp,
    color: Colors.white),)
        ]),
      ),
    );
  }
}
