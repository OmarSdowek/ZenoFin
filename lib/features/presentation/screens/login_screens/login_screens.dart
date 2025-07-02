import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/forget_password.dart';
import 'package:finance_app2/features/presentation/screens/login_screens/register.dart';
import 'package:finance_app2/features/presentation/widgets/back_buttom.dart';
import 'package:finance_app2/features/presentation/widgets/password.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:finance_app2/features/presentation/widgets/text_form_feild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
import '../onboarding/onboarding.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController email ;
  late final TextEditingController password ;
  bool isPassword = false;
  final formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    // TODO: implement initState
    super.initState();
    email.dispose();
    password.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: BackButtom(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => OnboardingScreens(),
          ));
        }),
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
                  height: 87.h,
                  width: 280.w,
                  child: Text(
                    "Welcome back! \nAgain!",
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Textformfeild(
                  text: "Enter your Email",
                  hintcolor: Color.fromRGBO(232, 236, 244, 1),
                  borderreduos: 8.r,
                  sizehinttext: 15.sp,
                  controller: email,
                  validator: (v) {
                    if(v!.isEmpty){
                      return "enter your email";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 12.h,
                ),
                PasswordTextformfeild(
                  pass: password,
                  validator: (v) {
                    if(v!.length < 8){
                      return "Password must be at least 8 charcater";
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
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPassword(),));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Color.fromRGBO(106, 112, 124, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Primerybuttonwidgets(
                  text: "Login",
                  textcolor: Colors.white,
                  buttomcolor: Color.fromRGBO(97, 122, 253, 1),
                  onpress: () {
                    if(formkey.currentState!.validate()){
                    }
                  },
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 113.w,
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "Or Login with",
                      style: TextStyle(
                          color: Color.fromRGBO(106, 112, 124, 1),
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SizedBox(
                      width: 112.w,
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
                            child: Icon(
                          Ionicons.logo_facebook,
                          color: AppColor.primerycolor,
                          size: 40,
                        )),
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
                            child: Icon(
                          Ionicons.logo_apple,
                          color: AppColor.blackcolor,
                          size: 40,
                        )),
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
                            child: Icon(
                          Ionicons.logo_google,
                          color: Colors.red,
                          size: 40,
                        )),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 155.h,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ));
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              color: AppColor.blackcolor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: "Register Now",
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
