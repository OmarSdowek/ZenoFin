import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextformfeild extends StatelessWidget {
  final String? text;
  final Color? hintcolor;
  final bool? isPassword;
  final IconButton suffixicon;
  final double? paddingspace;
  final TextEditingController pass;
  final String? Function(String?)? validator;
  PasswordTextformfeild(
      {super.key,
        this.text,
        this.hintcolor,
        this.isPassword,
        required this.suffixicon,
        this.paddingspace,
        this.validator,
        required this.pass});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingspace ?? 0),
      child: TextFormField(
        validator: validator,
        controller: pass,
        autofocus: false,
        obscureText: isPassword ?? false,
        decoration: InputDecoration(
          suffixIcon: suffixicon,
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
          hintText: text,
          hintStyle: TextStyle(
              color: Color(0x8391A1),
              fontWeight: FontWeight.bold,
              fontSize:  15.sp),
          filled: true,
          fillColor: Color.fromRGBO(232, 236, 244, 1),
          label: Text(text!),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular( 8.r),
            borderSide: BorderSide(
              color: Color(0xE8ECF4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
      ),
    );
  }
}
