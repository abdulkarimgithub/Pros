import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pros/View/Home/Payment/payment.dart';
import 'package:pros/View/Home/Servicepage/component/Container.dart';
import 'package:pros/View/Home/Servicepage/component/componnent.dart';
import 'package:pros/View/Home/Servicepage/component/text.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  List gridList = [
    ["assets/images/Mask group.png", "8 years", "of experience"],
    ["assets/images/Frame 17.png", "Certified", "with Taskrabit2.0"],
    ["assets/images/Star 2.png", "300+", "Reviews"],
    ["assets/images/Group 53.png", "350+", "CompletedProjects"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 347.h,
                    width: double.infinity.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/Rectangle 1.png"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Styla Johnson",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontFamily: "Inter"),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Gardner",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: "Inter"),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "\$12/hr",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff264653),
                            fontFamily: "Inter"),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Verified",
                        style: TextStyle(
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff5FEA05),
                            fontFamily: "Inter"),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 150.h,
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return ServiceComponent(
                        assetName: gridList[index][0],
                        text1: gridList[index][1],
                        Text2: gridList[index][2]);
                  },
                ),
              ),
              Text(
                "Bio",
                style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: "Inter"),
              ),
             TextFormate(),
              SizedBox(height: 20.h,),
              Row(
                children: [
                  Text("Reviews",style: TextStyle(color: Color(0xff313131),fontSize: 14.sp,fontWeight: FontWeight.w700),),
                  Text("(300+)",style: TextStyle(color: Color(0xff264653),fontSize: 14.sp,fontWeight: FontWeight.w400),),
                ],
              ),

              Container(
                height: 150.h,
                width: double.infinity,
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ContainerFormate(),
                  );

                },),
              ),

              SizedBox(height: 20.h,),


              Row(
                children: [
                  Icon(Icons.messenger,size: 20, color: Color(0xff808080),),
                  SizedBox(width: 20.w,),
                  GestureDetector(
                    onTap: () {

                      Get.to(PaymentScreen());
                    },
                    child: Container(
                      height: 35.h,
                      width: 276.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r),color: Color(0xff264653),),
                      child: Center(child: Text("Book now",style: TextStyle(color: Colors.white),)),

                    ),
                  )
                ],
              )
              ]
          ),
        ),
      ),
    );
  }
}
