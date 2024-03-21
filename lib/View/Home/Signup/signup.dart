import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pros/View/Home/Login/login.dart';
import 'package:pros/View/Home/Signup/component/signup_Textfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Login background.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 27, right: 27, top: 37, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 168.w,
                  height: 172.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Text("Login as",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 29.sp,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                    )),
                SizedBox(
                  height: 28.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Customer",
                        style: TextStyle(
                          color: Color(0xffAAAAAA),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                        )),
                    SizedBox(
                      width: 80.w,
                    ),
                    Text("Service Provider",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                        )),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                LinearProgressBar(
                    maxSteps: 6,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 3,
                    progressColor: Color(0xffAAAAAA),
                    backgroundColor: Colors.white),
                SizedBox(
                  height: 50.h,
                ),
                SignupTextfiel(
                    hintText: "Email", prefixIcon: Icon(Icons.email_outlined)),
                SizedBox(
                  height: 20.h,
                ),
                SignupTextfiel(
                    hintText: "Email", prefixIcon: Icon(Icons.email_outlined)),
                SizedBox(
                  height: 20.h,
                ),
                SignupTextfiel(
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: 20.h),
                SignupTextfiel(
                  hintText: " Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                SizedBox(height: 20.h),
                SignupTextfiel(
                  hintText: "Phone number",
                  prefixIcon: Icon(Icons.lock),
                ),
                SizedBox(height: 20.h),
                SignupTextfiel(
                  hintText: "Confirm Phone number",
                  prefixIcon: Icon(Icons.lock),
                ),
                SizedBox(
                  height: 47.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Signup",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                        )),
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginPage());
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff264653),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                        maxRadius: 30.r,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(LoginPage());
                      },
                      child: Text("Login",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                          )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
