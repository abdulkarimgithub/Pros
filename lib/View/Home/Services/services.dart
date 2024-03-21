import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/Services/Component/serviceslist.dart';
import 'package:pros/View/Home/Yark%20work/yark%20work.dart';

import '../Question/question.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  List service = [
    [
      "assets/images/image(1).png",
      "I am a Wall Painter. I will paint your home walls smoothy"
    ],
    [
      "assets/images/image(2).png",
      "I am a Helper. I will help you to shift your home"
    ],
    [
      "assets/images/image(3).png",
      "I am a Gardner. I will handle your home gardens"
    ],
    [
      "assets/images/image(4).png",
      "I am a Cleaner. I will clean your home."
    ],
    [
      "assets/images/image(5).png",
      "I am a Plumber. Lorem ipsum dolor sit amet,"
    ],
    [
      "assets/images/image(6).png",
      "I am a Wall Painter. I will paint your home walls smoothy"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.to(YarkWorkScreen());
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            maxRadius: 30.r,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Services available ',
                  style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' (99+)',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17.sp,
                            color: Color(0xff264653))),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Integer ut sapien vel eros tincidunt molestie ",
                style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff474747)),
              ),
              SizedBox(
                height: 20.h,
              ),

              ListView.separated(
                shrinkWrap: true,
// itemExtent: 200,

                padding: EdgeInsets.all(14),
                scrollDirection: Axis.vertical,

                itemBuilder: (context, index) {
                  return ServicesList(
                   assetName: service[index][0],
                    text: service[index][1],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 15.h,
                  );
                },
                itemCount: service.length,

              ),

            ]),
      ),
    );
  }
}
