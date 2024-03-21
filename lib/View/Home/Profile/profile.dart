import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/Payment/payment.dart';
import 'package:pros/View/Home/PaymentProcess/paymentprocess.dart';
import 'package:pros/View/Home/Profile/Component/profiletext.dart';
import 'package:pros/View/Home/Profile/Component/textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(leading:
    GestureDetector(
      onTap: (){
        Get.to(PaymentScreen());
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
            ProfileText(text: "Yard work",),
            SizedBox(height: 10.h,),

            ProfileText(text: "Street Address",),
            ProfileTextfield( hintText: "enter first name"),
           SizedBox(height: 10.h,),
            ProfileText(text: "Last Name",),
           ProfileTextfield( hintText: "enter Last name"),
            SizedBox(height: 10.h,),
            ProfileText(text: "Email Adress",),
            ProfileTextfield( hintText: "Email"),
            SizedBox(height: 10.h,),
            ProfileText(text: "Password",),
            ProfileTextfield( hintText: "password"),
            SizedBox(height: 10.h,),
            ProfileText(text: "Confirm password",),
            ProfileTextfield( hintText: "confirm password"),
            SizedBox(height: 10.h,),
            ProfileText(text: "Phone",),
            ProfileTextfield( hintText: "enter your number"),




            SizedBox(height: 50.h,),
            GestureDetector(
              onTap: () {
                Get.to(PaymentProcess());
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
