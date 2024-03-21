import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/PaymentMethod/component/container.dart';
import 'package:pros/View/Home/PaymentProcess/paymentprocess.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List PamentmehtodList = [
    [
      "assets/images/pngwing.png",
      Color(0xff279B90),
      Colors.white,
      Colors.white,
      "Paypal"
    ],
    [
      "assets/images/pngwing (1).png",
      Colors.white,
      Color(0xff000000),
      Color(0xff464545),
      "MasterCard"
    ],
    [
      "assets/images/pngwing (2).png",
      Colors.white,
      Color(0xff000000),
      Color(0xff464545),
      "Visa"
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.to(PaymentProcess());
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
                    Text(
                      "Payment Method",
                      style: TextStyle(
                        fontSize: 17.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),
                    SizedBox(
                      height: 320.h,
                      child: ListView.builder(
                        itemCount: PamentmehtodList.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return PaymentContainer(
                            title: PamentmehtodList[index][4],
                              assetName: PamentmehtodList[index][0],
                              color: PamentmehtodList[index][1],
                              color2: PamentmehtodList[index][2],
                              color1: PamentmehtodList[index][3]);
                        },
                      ),
                    ),
                    Center(
                        child: Text(
                      "Add new Card",
                      style: TextStyle(
                          color: Color(0xff264653),
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline),
                    )),
                    SizedBox(height: 300.h,),
                    Center(
                      child: GestureDetector(
                        onTap: () {


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
