import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pros/View/Home/HomePage/homepage.dart';
import 'package:pros/View/Home/HomeScreen/homescreen.dart';
import 'package:pros/View/Home/Login/login.dart';


class SpalashTwo extends StatefulWidget {
  const SpalashTwo({Key? key}) : super(key: key);


  @override
  State<SpalashTwo> createState() => _SpalashTwoState();
}

class _SpalashTwoState extends State<SpalashTwo> {
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000),
          ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) =>
              HomePage(),
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity.h,
          width: double.infinity.w,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Login (1).png"),fit: BoxFit.fill)),
        ),
        Container(
          height: double.infinity.h,
          width: double.infinity.w,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/onlogo.png"),fit: BoxFit.fill)),
        ),
        Center(
          child: Container(height: 231.h,
            width: 228.w,
            decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/images/logo.png"),fit: BoxFit.fill)),
          ),
        ),


      ],
    );
  }
}
