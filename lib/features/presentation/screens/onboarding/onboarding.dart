
import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/register.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:finance_app2/features/presentation/widgets/secand_buttom_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../login_screens/login_screens.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
            height: 540.h,
                child: Image.asset(
                  AppAssets.onboarding,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                )),
            SizedBox(
              height: 21.h,
            ),
            Primerybuttonwidgets(
              text: "Login",
              buttomcolor: Colors.blueAccent,
              textcolor: Colors.white,
              weight: 331.w,
              hight: 56.h,
              onpress: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen()));
              },
            ),
            SizedBox(
              height: 13.h,
            ),
            Secondbuttomwidget(
              height: 56.h,
              wight: 331.w,
              onpress: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => RegisterScreen(),
                ));
              },
              textcolor: Colors.black,
              text: "Register",
            ),
            SizedBox(
              height: 38.h,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Continue as a guest",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15.sp,
                      decoration: TextDecoration.underline),
                ))
          ],
        ),
      ),
    );
  }
}
