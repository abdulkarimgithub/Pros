import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pros/View/Home/Profile/profile.dart';
import 'package:pros/View/Home/Servicepage/servicepage.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../Question/question.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Get.to(ServicePage());
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
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 25,right: 25),
        child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Text(
            "Select Date",
            style: TextStyle(
                color: Colors.black,
                fontSize: 17.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter"),
          ),
          SizedBox(height: 20.h,),
          DateTimePicker(
            initialValue: DateTime.now().toString(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            dateLabelText: 'Date',
            onChanged: (val) => print(val),
            validator: (val) {
              print(val);
              return null;
            },
            onSaved: (val) => print(val),
          ),
              SizedBox(height: 20.h,),
              Text(
                "Time",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Inter"),
              ),

              DateTimePicker(type: DateTimePickerType.time,
                timeLabelText: " Select Time",
              ),
SizedBox(
  height: 400.h,
),
              Center(
                child: GestureDetector(
                  onTap: () {

                    Get.to(ProfileScreen());
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
      ),
    );
  }
}
