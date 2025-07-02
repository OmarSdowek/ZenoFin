import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/widgets/buildProfileField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class MyprofileScreen extends StatelessWidget {
  const MyprofileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 18.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE3E9ED),
                        border: Border.all(color: Colors.black54,width: 1.w)
                    ),
                    child: IconButton(onPressed: () {

                    }, icon: Icon(Icons.arrow_back_ios, color: AppColor.blackcolor,)),
                  ),
                  Text("My Profile",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                  Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffE3E9ED),
                        border: Border.all(color: Colors.black54,width: 1.w)
                    ),
                    child: Image.asset(AppAssets.profileimage),
                  ),
                ],
              ),
              SizedBox(height: 37.h,),
              ClipOval(child: Image.asset(AppAssets.profile, fit: BoxFit.fill,width: 100.w,height: 100.h,)),
              SizedBox(height: 9.h,),
              Buildprofilefield(
                label: "Full Name",
                value: "omar Sayed Esmail Dowek",
              ),
              SizedBox(height: 16.h,),
              Buildprofilefield(
                label: "Email",
                value: "omarsayed@gmail.com",
              ),
              SizedBox(height: 16.h,),
              Buildprofilefield(
                label: "Phone Number",
                value: "omar Sayed Esmail Dowek",
              ),
              SizedBox(height: 16.h,),
              Buildprofilefield(
                label: "Adress",
                value: "Egypt,Cairo",
              ),

            ],
          ),
        )
    );
  }
}
