import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButtom extends StatelessWidget {
  final void Function()? onPressed;
  BackButtom({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Container(
        height: 41.h,
        width: 41.w,
        decoration: BoxDecoration(
            color: Color.fromRGBO(232, 236, 244, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: IconButton(
              onPressed: onPressed, icon: Icon(Icons.arrow_back_ios)),
        ),
      ),
    );
  }
}
