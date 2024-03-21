import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pros/View/Home/Categories/categories.dart';
import 'package:pros/View/Home/HomeScreen/Component/gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List myList = [
    [
      "assets/images/man-cleaning-table-medium-shot 1.png",
      "assets/images/first.png",
      "House Cleaning"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 2.png",
      "assets/images/second.png",
      "Gardner"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 3.png",
      "assets/images/third.png",
      "Plumber"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 4.png",
      "assets/images/first.png",
      "TV Mounting"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 5.png",
      "assets/images/second.png",
      "Furniture \nRemoval"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 6.png",
      "assets/images/third.png",
      "Ironing"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 7.png",
      "assets/images/first.png",
      "Kitchen\nCleaning"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 8.png",
      "assets/images/second.png",
      "Furniture\nAssembling"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 9.png",
      "assets/images/third.png",
      "Help\nMoving"
    ],

  ];
  List myList2=[
    [
      "assets/images/man-cleaning-table-medium-shot 1.png",
      "assets/images/first.png",
      "House Cleaning"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 2.png",
      "assets/images/second.png",
      "Gardner"
    ],
    [
      "assets/images/man-cleaning-table-medium-shot 3.png",
      "assets/images/third.png",
      "Plumber"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // padding: EdgeInsets.only(top: 15),
                      height: 59.h,
                      width: 159.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          boxShadow: [
                            BoxShadow(color: Colors.black12),
                          ]),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/images 1.png"),
                            maxRadius: 25.r,
                          ),
                          Text(
                            "  Welcome ,",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Inter'),
                          ),
                          Text(
                            "Charles",
                            style: TextStyle(
                                color: Color(0xff264653),
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Inter'),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xff264653),
                        ),
                        Text(
                          " Austin ,",
                          style: TextStyle(
                              color: Color(0xff264653),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  "I need help with..",
                  style: TextStyle(
                      color: Color(0xff545454),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Inter'),
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE0E0E0))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Search services",
                    prefixIcon: Icon(Icons.search),
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  height: 500.h,
                  child: GridView.builder(physics: AlwaysScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        childAspectRatio: 0.5 / 0.65),
                    itemCount: myList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GridContainer(
                          assetName: myList[index][0],
                          title: myList[index][2],
                          assetName2: myList[index][1]);
                    },
                  ),
                ),
                // SizedBox(height: 10.h,),

                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(CategoriesScreen());
                    },
                    child: Container(
                      height: 24.h,
                      width: 72.w,
                      decoration: BoxDecoration(
                        color: Color(0xff264653),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Center(
                          child: Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 10.sp,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                Text(
                  "Trending",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      color: Color(0xff393939)),
                ),

                SizedBox(
                  height: 200.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        childAspectRatio: 0.5 / 0.65),
                    itemCount: myList2.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return GridContainer(
                          assetName: myList2[index][0],
                          title: myList2[index][2],
                          assetName2: myList2[index][1]);
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
