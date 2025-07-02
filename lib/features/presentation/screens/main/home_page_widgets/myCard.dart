import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/widgets/item_card_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Mycard extends StatelessWidget {
  const Mycard({super.key});

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
            Text("All Cards",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
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
            SizedBox(height: 24.h,),
            ItemCardView(
              date: "12/24",
              balance: "23400 EG",
              pass: "**** 3569",
            ),
            SizedBox(height: 12.h,),
            ItemCardView(
              date: "12/08",
              balance: "20000 EG",
              pass: "**** 9549",
            ),
          ],
        ),
      ),
    );
  }
}
