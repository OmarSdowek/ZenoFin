
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/core/resource/app_fonts.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/login_screens.dart';
import 'package:finance_app2/features/presentation/widgets/back_buttom.dart';
import 'package:finance_app2/features/presentation/widgets/password.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:finance_app2/features/presentation/widgets/text_form_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import '../onboarding/onboarding.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 late final TextEditingController email ;
 late   final TextEditingController username ;
 late   final TextEditingController password ;
   final formkey = GlobalKey<FormState>();
   bool isPassword = false;
 @override
  void dispose() {
    super.dispose();
    // TODO: implement initState
    super.initState();
    email.dispose();
    username.dispose();
    password.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = TextEditingController();
    username = TextEditingController();
    password = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // appbar
          appBar: AppBar(
            leading:BackButtom(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OnboardingScreens(),
                  ));
                }
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 28.h,
                    ),
                    // text
                    SizedBox(
                      height: 78.h,
                      width: 331.w,
                      child: Text(
                        "Hello! Register to get \nstarted",
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontFamily: AppFonts.mainfontname
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    //username feild
                    Textformfeild(
                      text: "User Name",
                      hintcolor: Color.fromRGBO(232, 236, 244, 1),
                      borderreduos: 8.r,
                      sizehinttext: 15.sp,
                      controller: username,
                      validator: (v) {
                        if(v!.isEmpty){
                          return "pease enter your name";
                        }
                      },
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    // // email feild
                    Textformfeild(
                      text: "Enter your Email",
                      hintcolor: Color.fromRGBO(232, 236, 244, 1),
                      borderreduos: 8.r,
                      sizehinttext: 15.sp,
                      controller: email,
                      validator: (v) {
                        if(v!.isEmpty){
                          return "pease enter email";
                        }
                      },

                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //password
                    PasswordTextformfeild(
                      pass: password,
                      validator: (v) {
                        if(v!.length < 8){
                          return "Password must be at least 8 charchter";
                        }
                      },

                      suffixicon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye_outlined)),
                      text: "Password",
                      isPassword: isPassword,
                      hintcolor: Colors.grey,

                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    PasswordTextformfeild(
                      validator: (v) {
                        if(v!.length < 8){
                          return "Password must be at least 8 charchter";
                        }
                      },
                      pass: password,
                      suffixicon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.remove_red_eye_outlined)),
                      text: "Confirm password",
                      isPassword: isPassword,
                      hintcolor: Colors.grey,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    // Reg bottom
                    Primerybuttonwidgets(
                      text: "Register",
                      textcolor: Colors.white,
                      buttomcolor: Color.fromRGBO(97, 122, 253, 1),
                      onpress: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 103.w,
                          child: Divider(),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "Or Register with",
                          style: TextStyle(
                              color: Color.fromRGBO(106, 112, 124, 1), fontSize: 14.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        SizedBox(
                          width: 103.w,
                          child: Divider(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 56,
                            width: 105,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(232, 236, 244, 1),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Center(
                                child: Icon(Ionicons.logo_facebook , color: AppColor.primerycolor,size: 35.sp,)
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 56.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(232, 236, 244, 1),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Center(
                                child: Icon(Ionicons.logo_apple , color: AppColor.blackcolor,size: 35.sp,)),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 56.h,
                            width: 105.w,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(232, 236, 244, 1),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Center(
                                child: Icon(Ionicons.logo_google , color: Colors.red,size: 35.sp,)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 54.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Already have an account? ',
                                style: TextStyle(
                                  color: AppColor.blackcolor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: "Login Now",
                                style: TextStyle(color: AppColor.bluecolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.h,
                    ),

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
