import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TextFormate extends StatefulWidget {
  const TextFormate({Key? key}) : super(key: key);

  @override
  State<TextFormate> createState() => _TextFormateState();
}

class _TextFormateState extends State<TextFormate> {
  @override
  Widget build(BuildContext context) {
    return Text(" Styla Johnson \$12/hr Gardne Verified 8 years Certified 300+ 350+ of experiencewith Taskrabit2.0 Reviews Completed Projects Bio Lorem ipsum dolor sit amet, consectetur adipiscing elit. nisl vel dui feugiat scelerisque. Reviews (300+) Daid Jacksonsep 2023 00:22 Daid Jackson01 sep 2023 00:22 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris non tempor libero. Book now", style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11.sp,
        color: Color(0xff474747)),);
  }
}
