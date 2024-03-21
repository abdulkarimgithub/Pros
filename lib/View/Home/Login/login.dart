import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:pros/View/Home/Bottombar/bottombar.dart';
import 'package:pros/View/Home/ForgetScreen/forgetscreen.dart';
import 'package:pros/View/Home/Login/Component/textfield.dart';
import 'package:pros/View/Home/Signup/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              CustomTextfield(
                  hintText: "Email", prefixIcon: Icon(Icons.email_outlined)),
              SizedBox(
                height: 20.h,
              ),
              CustomTextfield(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
              SizedBox(
                height: 47.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Login",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                      )),
                  GestureDetector(
                    onTap: () {
                      Get.to(BottomBarScreen());
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.arrow_forward),
                      maxRadius: 30.r,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.to(SignupPage());
                    },
                    child: Text("Sign up",
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
                  GestureDetector(
                    onTap: (){Get.to(ForgetPage());},
                    child: Text("Forget Password",
                        style: TextStyle(
                          color: Color(0xff264653),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff264653),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
