import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
class CustomItemHomeWidgets extends StatelessWidget {
  final Widget widget;
  final String title;
  final String describtion;
   CustomItemHomeWidgets({super.key, required this.widget, required this.title, required this.describtion});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 156.w,
        height: 140.h,
        decoration: BoxDecoration(
        border: Border.all(color: Colors.black26,width: 1.w),
    borderRadius: BorderRadius.circular(16.r),
    color: Color(0xffFDFDFD)
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Color(0xffECF1F6),
              borderRadius: BorderRadius.circular(12.r),

            ),
            child: widget ,
          ),
          SizedBox(height: 6.h,),
          Text(title ,style: TextStyle(fontSize: 16.sp , fontWeight: FontWeight.w600),),
          SizedBox(height: 5.h,),
          Text(describtion ,style: TextStyle(fontSize: 12.sp , fontWeight: FontWeight.w500),),

        ],
      ),

    );
  }
}
