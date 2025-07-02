



import 'package:finance_app2/features/presentation/screens/login_screens/Password_Changed.dart';
import 'package:finance_app2/features/presentation/widgets/back_buttom.dart';
import 'package:finance_app2/features/presentation/widgets/password.dart';
import 'package:finance_app2/features/presentation/widgets/primery_buttom_widegets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../onboarding/onboarding.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}


class _CreateNewPasswordState extends State<CreateNewPassword> {
  late final TextEditingController password ;
  final formkey = GlobalKey<FormState>();
  bool isPassword = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    // TODO: implement initState
    super.initState();
    password.dispose();
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
                      height: 39.h,
                      width: 234.w,
                      child: Text(
                        "Create new password",
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
                        "Your new password must be unique from those\n previously used.",
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
                    PasswordTextformfeild(
                      pass: password,
                      validator: (v) {
                        if(v!.length < 8){
                          return "password must be at least 8 charchter";
                        }
                        return null;
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
                      pass: password,
                      validator: (v) {
                        if(v!.length < 8){
                          return "password must be at least 8 charchter";
                        }
                        return null;
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
                      text: "Confirm password",
                      isPassword: isPassword,
                      hintcolor: Colors.grey,
                    ),
                    SizedBox(height: 38,),
                    Primerybuttonwidgets(
                      text: "Reset Password",
                      textcolor: Colors.white,
                      buttomcolor: Color.fromRGBO(97, 122, 253, 1),
                      onpress: () {
                        if(formkey.currentState!.validate()){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>PasswordChanged() ,));
                        }
                      },
                    ),
                    SizedBox(
                      height: 361.h,
                    ),



                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
