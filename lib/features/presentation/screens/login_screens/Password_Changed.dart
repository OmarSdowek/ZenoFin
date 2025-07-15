import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/login_screens.dart';
import 'package:finance_app2/features/presentation/screens/main/home.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 248.h,
          ),
          SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(
                AppAssets.Successmark,
                fit: BoxFit.fill,
                scale: 0.1,
              )),
          SizedBox(
            height: 35.h,
          ),
          Text(
            "Your password has been changed \n \t                successfully.",
            style: TextStyle(fontSize: 15.sp),
          ),
          SizedBox(height: 40,),
          Center(
            child: Primerybuttonwidgets(
              text: "Back to Login",
              textcolor: Colors.white,
              buttomcolor: Color.fromRGBO(97, 122, 253, 1),
              onpress: () {
                Navigator.of(context).push( MaterialPageRoute(builder: (context) => LoginScreen(),));
              },
            ),
          ),
        ],
      ),
    );
  }
}
