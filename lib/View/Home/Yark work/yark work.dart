import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/Question/question.dart';
import 'package:pros/View/Home/Services/services.dart';
import 'package:pros/View/Home/Yark%20work/component/textyark.dart';



class YarkWorkScreen extends StatefulWidget {
  const YarkWorkScreen({Key? key}) : super(key: key);

  @override
  State<YarkWorkScreen> createState() => _YarkWorkScreenState();
}

class _YarkWorkScreenState extends State<YarkWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading:
    GestureDetector(
      onTap: (){
        Get.to(QuestionScreen());
      },
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(Icons.arrow_back,color: Colors.black,),
        maxRadius: 30.r,
      ),
    ),

    ),
    body: Padding(
      padding: const EdgeInsets.only(left: 24,right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         TextYark(text: "Yard work",color: Colors.black,fontSize: 17.sp,),
          SizedBox(
            height: 23.h,
          ),
         TextYark(text: "Street Address",color: Color(0xff7c7c7c),fontSize: 13.sp,),
        TextFormField(
          decoration: const InputDecoration(
           suffixIcon: Icon(Icons.cancel_outlined),
            hintText: 'Robert',
            hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

          ),
        ),
          SizedBox(
            height: 16.sp,

          ),
          TextYark(text: "Optional unit or apt #",color: Color(0xff7c7c7c),fontSize: 13.sp,),
          TextFormField(
            decoration: const InputDecoration(

              hintText: 'Robert',
              hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),

            ),
          ),
          SizedBox(height: 50.h,),
          GestureDetector(
            onTap: (){
              Get.to(ServicesScreen());
            },
            child: Container(
              height: 40.h,
              width: 345.w,
              decoration: BoxDecoration(color: Color(0xff264653),borderRadius: BorderRadius.circular(8.r)),
              child: Center(child: Text("Save",style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    ),
    );
  }
}
