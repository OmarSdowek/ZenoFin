import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeNotificationRowWidgets extends StatefulWidget {
  const HomeNotificationRowWidgets({super.key});

  @override
  State<HomeNotificationRowWidgets> createState() => _HomeNotificationRowWidgetsState();
}

class _HomeNotificationRowWidgetsState extends State<HomeNotificationRowWidgets> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipOval(child: Image.asset(AppAssets.profile, width: 48.w,height: 48.h,fit: BoxFit.fill,)),
        SizedBox(width: 11.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back" , style: TextStyle(
              fontSize: 16,
              color: AppColor.greycolor,
            ),
            ),
            Text("omar Sayed Dowek" , style: TextStyle(
                fontSize: 20,
                color: AppColor.blackcolor,
                fontWeight: FontWeight.bold
            ),
            )
          ],
        ),
        SizedBox(width: 58.w,),
        Container(
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColor.greycolor),
              color: AppColor.greycolor.withOpacity(0.2)
          ),
          child: Icon(Icons.notifications,color: AppColor.primerycolor,),
        )
      ],
    );
  }
}
