import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Login/login.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({Key? key}) : super(key: key);

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Forgot password_.png"),
                fit: BoxFit.fill)),
child: Padding(
  padding: const EdgeInsets.only(top: 98,left: 40,right: 40),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Forgot \nPassword?",style:TextStyle(fontFamily: 'Inter',fontWeight: FontWeight.w800,fontSize: 30.sp,color: Colors.white,),),
      SizedBox(height: 60.h,),
          TextField(
            decoration: InputDecoration(
              filled: true,
              border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.r),),
              hintText: " Enter Email",
              prefixIcon: Icon(Icons.email_outlined),
              fillColor: Colors.white,

            ),
          ),
      SizedBox(height: 164.h,),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Send Email",
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
              )),
          GestureDetector(
            onTap: (){
              Get.to(LoginPage());
            },
            child: CircleAvatar(
              backgroundColor: Color(0xff264653),
              child: Icon(Icons.arrow_forward,color: Colors.white,),
              maxRadius: 30.r,
            ),
          ),
        ],
      ),
    ],
  ),
),
      ),
    );;
  }
}
