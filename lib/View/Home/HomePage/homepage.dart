import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pros/View/Home/HomePage/Component/text.dart';
import 'package:pros/View/Home/Login/login.dart';
import 'package:pros/View/Home/Signup/signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 37,
            right: 37,
            top: 60,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 62.w,
                height: 82.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: 6.h,
              ),
              RichText(
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: 'Pros',
                    style: TextStyle(
                        color: Color(0xff54D0BE),
                        fontSize: 42.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter'),
                  ),
                  TextSpan(
                    text: 'Ready',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 42.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter'),
                  )
                ]),
              ),
              SizedBox(
                height: 89.h,
              ),
              CircleAvatar(
                child: Image(
                  image: AssetImage("assets/images/Group 6.png"),
                ),
                maxRadius: 70.r,
              ),
              SizedBox(
                height: 15.h,
              ),
              HomepageText(text: "Charles Xavior", fontSize: 23.sp),
              SizedBox(
                height: 90.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomepageText(text: "log in", fontSize: 22.sp),
                  GestureDetector(
                    onTap: (){
                      Get.to(LoginPage());
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
                height: 120.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(SignupPage());
                    },
                    child: HomepageText(
                      text: "Signup",
                      fontSize: 16.sp,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
