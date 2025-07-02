import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Buildprofilefield extends StatelessWidget {
  final String label;
  final String value;
  const Buildprofilefield({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label , style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff9CA4AB)
        ),
        ),
        SizedBox(height: 6.h,),
        Text(value,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600)),
        SizedBox(height: 3.h,),
        Divider(),
      ],
    );
  }
}
