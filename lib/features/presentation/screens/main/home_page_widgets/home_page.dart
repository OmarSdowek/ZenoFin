import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/widgets/carousel_widgets.dart';
import 'package:finance_app2/features/presentation/widgets/custom_item_home_widgets.dart';
import 'package:finance_app2/features/presentation/widgets/home_notification_row_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
               children: [
                 SizedBox(height: 18.h,),
                 HomeNotificationRowWidgets(),
                 SizedBox(height: 18.h,),
                 CarouselWidgets(),
                 Expanded(
                   child: GridView(
                     padding: EdgeInsets.only(
                         top: 24.sp,left: 20.sp),
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 2,
                         crossAxisSpacing: 9.sp,
                         mainAxisSpacing: 5.sp
                     ),
                     children: [
                      CustomItemHomeWidgets(
                        widget: Image.asset(AppAssets.sendPhoto),
                        title: "Send money",
                        describtion: "Take acc to acc",
                      ),
                       CustomItemHomeWidgets(
                         widget: Icon(Ionicons.wallet, color: AppColor.primerycolor,),
                         title: "Pay the bill",
                         describtion: "Lorem ipsum",
                       ),
                       CustomItemHomeWidgets(
                         widget: Image.asset(AppAssets.sendPhoto, color: AppColor.primerycolor,),
                         title: "Request",
                         describtion: "Lorem ipsum",
                       ),
                       CustomItemHomeWidgets(
                         widget: Icon(Icons.contact_mail_rounded , color: AppColor.primerycolor,),
                         title: "Contact",
                         describtion: "Lorem ipsum",
                       ),
                     ],
                   
                   ),
                 ),

               ],
      ),
    );
  }
}
