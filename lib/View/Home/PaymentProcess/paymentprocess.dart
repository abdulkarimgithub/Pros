import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/PaymentMethod/paymentmethod.dart';
import 'package:pros/View/Home/PaymentProcess/Component/Text.dart';
import 'package:pros/View/Home/PaymentProcess/Component/detailcontainer.dart';
import 'package:pros/View/Home/Profile/profile.dart';

class PaymentProcess extends StatefulWidget {
  const PaymentProcess({Key? key}) : super(key: key);

  @override
  State<PaymentProcess> createState() => _PaymentProcessState();
}

class _PaymentProcessState extends State<PaymentProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.to(ProfileScreen());
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              maxRadius: 20.r,
            ),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProcessText(
                      text: "Proceed",
                      fontSize: 17.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(

                      height: 27.h,
                      width: 354.w,
                      decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Icon(Icons.date_range,color: Colors.white,size: 20.sp,),
                            SizedBox(width: 10.w,),
                            RichText(
                              text: TextSpan(
                                text: '28 Sep,2023',
                                style: TextStyle(color: Colors.white,fontSize: 11.sp,fontWeight: FontWeight.w600),
                                children:  <TextSpan>[
                                  TextSpan(text: '   (12:00 pm)', style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 11.sp)),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 52.h,
                      width: 354.w,
                      decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(7.r)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProcessText(text: "Address",color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w600,),

                            ProcessText(text: "86 Grange RoadLondonWC25 0NC",fontSize: 9.sp,color: Colors.white,fontWeight: FontWeight.w400,)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h
                      ,),
                    Container(
                      height: 79.h,
                      width: 354.w,
                      decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(7.r)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12,top: 7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ProcessText(text: "Payment Method",color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w600,),
SizedBox(height: 15.h,),
                            Center(child: ProcessText(text: "Add Payment",fontSize: 9.sp,color: Colors.white,fontWeight: FontWeight.w400,))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    Container(
                      height: 141.h,
                      width: 354.w,
                      decoration: BoxDecoration(color: Color(0xff279B90),borderRadius: BorderRadius.circular(7.r)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Details",style: TextStyle(color: Colors.white,fontSize: 12.sp,fontWeight: FontWeight.w500),),


DetailContainer(),


                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    ProcessText(text: "Payment Details",fontSize: 17.sp,fontWeight: FontWeight.w700,color: Colors.black,),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            ProcessText(text: "Service Charge Total",fontSize: 11.sp,fontWeight: FontWeight.w500,color: Colors.black,),
                            ProcessText(text: "Discount",fontSize: 11.sp,fontWeight: FontWeight.w500,color: Colors.black,),
                          ],
                        ),
                        Column(
                          children: [
                            ProcessText(text: "\$24.00",fontSize: 11.sp,fontWeight: FontWeight.w500,color: Colors.black,),
                            ProcessText(text: "-\$4.00",fontSize: 11.sp,fontWeight: FontWeight.w500,color: Colors.black,),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC8C8C8),thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProcessText(text: "Total",fontSize: 17.sp,fontWeight: FontWeight.w700,color: Colors.black,),
                        ProcessText(text: "\$20.00",fontSize: 17.sp,fontWeight: FontWeight.w700,color: Colors.black,),
                      ],

                    ),
                    SizedBox(
                      height: 150.h
                      ,
                    ),

                    Center(
                      child: GestureDetector(
                        onTap: () {
Get.to(PaymentMethod());

                        },
                        child: Container(
                          height: 35.h,
                          width: 276.w,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r),color: Color(0xff264653),),
                          child: Center(child: Text("Confirm",style: TextStyle(color: Colors.white),)),

                        ),
                      ),
                    ),
                  ]),
            )));
  }
}
