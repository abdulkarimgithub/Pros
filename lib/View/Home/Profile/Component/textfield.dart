import 'package:flutter/material.dart';

class ProfileTextfield extends StatelessWidget {
  String? hintText;
   ProfileTextfield({Key? key,required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(

        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xff7c7c7c),fontWeight: FontWeight.w400),

      ),
    );
  }
}
