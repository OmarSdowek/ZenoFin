import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Primerybuttonwidgets extends StatelessWidget {
 final String? text;
  final Color? buttomcolor;
  final Color? textcolor;
  final double? weight;
  final double? hight;
  final void Function()? onpress;
  Primerybuttonwidgets(
      {super.key,
        this.buttomcolor,
        this.textcolor,
        this.weight,
        this.hight,
        this.onpress,
        this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
            fixedSize: Size( 331.w,  70.h),
            backgroundColor: buttomcolor ?? AppColor.primerycolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular( 8.0.r),
            )),
        child: Text(
          text ?? "",
          style: TextStyle(
            color: textcolor ?? AppColor.primerycolor,
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        ));
  }
}
