import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServicesList extends StatelessWidget {
  String assetName;
  String text;
  ServicesList({Key? key, required this.assetName,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 103.h,
          width: 185.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(assetName), fit: BoxFit.fill)),
        ),
        Container(
          height: 103.h,
          width: 165.w,
          color: Color(0xff279B90),
          child: Padding(
            padding: const EdgeInsets.only(left: 5,right: 5,),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffFFD600),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '4.7/5 ',
                        style: TextStyle(
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFD600)),
                        children: <TextSpan>[
                          TextSpan(
                              text: '(39)',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 9.sp,
                                  color: Color(0xffffffff))),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 9.sp,
                        color: Color(0xffffffff))),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("by Charles",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9.sp,
                            color: Color(0xffffffff))),
                    Text("\$12/hr",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9.sp,
                            color: Color(0xffffffff))),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
