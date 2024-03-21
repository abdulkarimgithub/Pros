import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pros/View/Home/Categories/categories.dart';
import 'package:pros/View/Home/Question/component/component.dart';
import 'package:pros/View/Home/Yark%20work/yark%20work.dart';
class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading:
        GestureDetector(
          onTap: (){
            Get.to(CategoriesScreen());
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back,color: Colors.black,),
            maxRadius: 30.r,
          ),
        ),

      ),
body: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [


    Center(
      child: Text("How many TV you need to \n install?",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'Inter',
            fontStyle: FontStyle.normal,
          )),
    ),
    SizedBox(
      height: 20.h,

    ),
    GestureDetector(
        onTap: (){

          Get.to(YarkWorkScreen());
        },
        child: TvNumber(text: "1")),
    SizedBox(height: 12.h,),
    TvNumber(text: "2"),
    SizedBox(height: 12.h,),
    TvNumber(text: "3"),
    SizedBox(height: 12.h,),
    TvNumber(text: "more")
  ],
),
    );
  }
}
