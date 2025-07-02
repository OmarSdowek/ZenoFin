import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/widgets/custom_item_home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
                Text("Statistic",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                Container(
                  width: 48.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE3E9ED),
                      border: Border.all(color: Colors.black54,width: 1.w)
                  ),
                  child: Image.asset(AppAssets.dots),
                ),
              ],
            ),
            SizedBox(height: 32.h,),
            Image.asset(AppAssets.chartimage ,width: 327.w,height: 236.h,),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomItemHomeWidgets(
                  describtion: "Income",
                  title: "15000",
                  widget: Icon(Icons.ios_share_outlined),
                ),
                CustomItemHomeWidgets(
                  describtion: "OutCome",
                  title: "35000",
                  widget: Icon(Icons.file_download_outlined),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
