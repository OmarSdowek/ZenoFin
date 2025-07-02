import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textformfeild extends StatelessWidget {
  final String? text;
  final Color? hintcolor;
  final double? sizehinttext;
  final double? borderreduos;
  final double? paddingspace;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  Textformfeild(
      {super.key,
        this.text,
        this.hintcolor,
        this.sizehinttext,
        this.borderreduos,
        this.paddingspace,
        this.validator,
        required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingspace ?? 0),
      child: TextFormField(
        controller: controller,
        validator: validator,
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 18.w),
          hintText: text,
          hintStyle: TextStyle(
              color: Color(0xff8391A1),
              fontWeight: FontWeight.bold,
              fontSize: sizehinttext ?? 13.sp),
          filled: true,
          fillColor: Color.fromRGBO(232, 236, 244, 1),
          label: Text(text!),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderreduos ?? 5),
            borderSide: BorderSide(
              color: Color(0xffE8ECF4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(borderreduos ?? 5.r),
          ),
        ),
      ),
    );
  }
}
