import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Secondbuttomwidget extends StatelessWidget {
 final String? text;
  final Color? textcolor;
  final double? textsize;
  final Color? buttomcolor;
  final double? wight;
  final double? height;
  final double? borderreduos;
  final void Function()? onpress;
  Secondbuttomwidget(
      {super.key,
        this.textcolor,
        this.textsize,
        this.buttomcolor,
        this.wight,
        this.height,
        this.borderreduos,
        this.onpress,
        this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onpress,
        style: OutlinedButton.styleFrom(
            backgroundColor: buttomcolor ?? AppColor.greycolor,
            surfaceTintColor: Colors.blueAccent,
            fixedSize: Size(wight ?? 331.w, height ?? 56.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderreduos ?? 8.r),
            )),
        child: Text(
          text ?? "",
          style: TextStyle(
            fontSize: textsize ?? 15.sp,
            color: textcolor ?? AppColor.Scandcolor,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
