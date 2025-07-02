
import 'package:finance_app2/core/resource/app_colors.dart';

import 'package:finance_app2/features/presentation/screens/login_screens/OTP_Verification.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/login_screens.dart';
import 'package:finance_app2/features/presentation/widgets/back_buttom.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:finance_app2/features/presentation/widgets/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../onboarding/onboarding.dart';

class ForgetPassword extends StatefulWidget {
  ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}


class _ForgetPasswordState extends State<ForgetPassword> {
 late final TextEditingController email ;
final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    // TODO: implement initState
    super.initState();
    email.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                    SizedBox(
                      height: 45.h,
                      width: 250.w,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 30.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 48.h,
                      width: 331.w,
                      child: Text(
                        "Don't worry! It occurs. Please enter the email\n address linked with your account.",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Textformfeild(
                      text: "Enter your Email",
                      validator: (v) {
                        if(v!.isEmpty){
                          return "enter your email";
                        }
                      },
                      hintcolor: Color.fromRGBO(232, 236, 244, 1),
                      borderreduos: 8.r,
                      sizehinttext: 15.sp,
                      controller: email,
                    ),
                    SizedBox(height: 38,),
                    Primerybuttonwidgets(
                      text: "Send Code",
                      textcolor: Colors.white,
                      buttomcolor: Color.fromRGBO(97, 122, 253, 1),
                      onpress: () {
                        if(formkey.currentState!.validate()){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpVerification(),));
                        }
                      },
                    ),
                    SizedBox(
                      height: 361.h,
                    ),

                    Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Remember Password? ',
                                style: TextStyle(
                                  color: AppColor.blackcolor,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(
                                text: "Login",
                                style: TextStyle(color: AppColor.bluecolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
