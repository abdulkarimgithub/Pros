import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/Categories/Component/categorylist.dart';
import 'package:pros/View/Home/Question/question.dart';

import '../HomeScreen/homescreen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List category = [
    ["Electrician"],
    ["Gardening"],
    ["Plumbing"],
    ["Ironing"],
    ["Dish Washing"],
    ["Cleaning"],
    ["Yard Work"],
    ["Furniture Assembling"],
    ["TV Services"],
    ["Power/Pressure Wash"],
    ["Handyman Services"],
    ["Language Translation"],
    ["Yard Work"],
    ["Event Help"],
    ["Virtual Services"],
    ["Tech Support"],
    ["Organization"],
    ["Pet Care"],
    ["Plumbing"],
    ["Tech Support"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 17,left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {

          Get.to(HomeScreen());
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,

                child: Icon(Icons.arrow_back_outlined,color: Colors.black,),

                maxRadius: 30.r,
              ),
            ),
          SizedBox(
            height: 20.h,
          ),

          Text(
          "Categories",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17.sp,
              color: Colors.black),
        ),
            SizedBox(
              height: 14.h,
            ),
            SizedBox(
              height: 600.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 10/2.5,

                    mainAxisSpacing: 10,
                    ),
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.to(QuestionScreen());
                      },
                      child: CategoryList(text: category[index][0]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
