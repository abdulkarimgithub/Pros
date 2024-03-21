import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SignupTextfiel extends StatelessWidget {
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
   SignupTextfiel({Key? key,required this.hintText, required this.prefixIcon, this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder( borderRadius: BorderRadius.circular(10.r),),
        hintText: hintText,
        prefixIcon: prefixIcon,
        fillColor: Colors.white,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
