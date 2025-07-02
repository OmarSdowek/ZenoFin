import 'package:finance_app2/features/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/resource/theme.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized(); // أضف هذه السطر
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825), // أزل .w و .h هنا
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) { // أضف builder
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Themeapp.LightTheme,
          home:  SplashScreen(),
        );
      },
    );
  }
}