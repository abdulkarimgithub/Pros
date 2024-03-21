import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 93.h,
          width: 145.w,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image(1).png"), fit: BoxFit.fill)),
        ),
        Container(
          height: 93.h,
          width: 145.w,
          color: Colors.white,
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
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                    "I am a Wall Painter. I will paint your home walls smoothy",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 9.sp,
                        color: Colors.black)),
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
                            color: Colors.black)),
                    Text("\$12/hr",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 9.sp,
                            color: Colors.black)),
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
