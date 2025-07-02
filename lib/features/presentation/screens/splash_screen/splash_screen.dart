import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnboardingScreens(),));
    },
    );
  }
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: double.infinity,
                height: 500.h,
                child: Image.asset(AppAssets.logosplash),
              ),
            ),
            Text("ZenoFin" , style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColor.primerycolor
            ),)
          ],
        ),
      ),
    );
  }
}
