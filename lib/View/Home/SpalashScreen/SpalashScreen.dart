import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pros/View/Home/Spalashtwo/spalashtwo.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 3000),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SpalashTwo(),
            )
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: double.infinity.h,
        width: double.infinity.w,

        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Login.png"),fit: BoxFit.fill)),

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
