
import 'package:finance_app2/core/resource/app_colors.dart';

import 'package:finance_app2/features/presentation/screens/login_screens/Create_new_password.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/Password_Changed.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/login_screens.dart';
import 'package:finance_app2/features/presentation/widgets/back_buttom.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../onboarding/onboarding.dart';

class OtpVerification extends StatefulWidget {
  OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OTPVerificationState();
}


class _OTPVerificationState extends State<OtpVerification> {
  late final TextEditingController otp ;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    otp = TextEditingController();
  }
  @override
  void dispose() {
    otp.dispose();
    super.dispose();
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 28.h,
                  ),
                  SizedBox(
                    height: 39.h,
                    width: 234.w,
                    child: Text(
                      "OTP Verification",
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
                      "Enter the verification code we just sent on your\n email address.",
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
                  PinCodeTextField(
                      appContext: context,
                      length: 4,
                  validator: (value) {
                    if(value!.isEmpty){
                      return "enter the code";
                    }
                  },
                    obscureText: false,
                    autovalidateMode: AutovalidateMode.always,
                    animationType: AnimationType.slide,
                    enableActiveFill: true,
                    controller:otp ,
                    onChanged: (value) {

                    },
                    onCompleted: (value) {
                      if(value!.isNotEmpty){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PasswordChanged(),));
                      }
                    },
                    pinTheme: PinTheme(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      shape: PinCodeFieldShape.box,
                      activeColor: Colors.blue,
                      disabledColor: Colors.black,
                     selectedColor: AppColor.primerycolor,
                     selectedFillColor: AppColor.whitecolor,
                     inactiveColor: Colors.blue,
                     activeFillColor: AppColor.whitecolor,
                      inactiveFillColor: Colors.grey.withOpacity(0.25),
                      fieldHeight: 60.h,
                      fieldWidth: 70.w,
                    ),
                  ),

                  SizedBox(height: 38,),
                  Primerybuttonwidgets(
                    text: "Verify",
                    textcolor: Colors.white,
                    buttomcolor: Color.fromRGBO(97, 122, 253, 1),
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateNewPassword(),));
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
                              text: 'Didn’t received code?',
                              style: TextStyle(
                                color: AppColor.blackcolor,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: " Resend",
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
        ));
  }
}
