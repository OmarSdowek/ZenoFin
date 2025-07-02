import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/screens/main/home_page_widgets/home_page.dart';
import 'package:finance_app2/features/presentation/screens/main/home_page_widgets/myCard.dart';
import 'package:finance_app2/features/presentation/screens/main/home_page_widgets/myProfile_screen.dart';
import 'package:finance_app2/features/presentation/screens/main/home_page_widgets/statistic_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
 static List<Widget> Screens = <Widget>[
   HomePage(),
   StatisticScreen(),
    Container(
      color: Colors.yellow,
    ),
    Mycard(),
   MyprofileScreen()
  ];
  void onTapItem(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled , size: 20.sp,),
                label: "Home",
                tooltip: "home"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.stacked_bar_chart, size: 20.sp,),
                  label: "Statistic",
                  tooltip: "Statistic"
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                        color: AppColor.primerycolor,
                        borderRadius: BorderRadius.all(Radius.circular(30.r))
                    ),
                    child: Center(
                      child: Container(
                        width: 20.w,
                        height: 20.h,
                        color: AppColor.whitecolor,
                        child: Center(child: Text("+", style: TextStyle(fontSize: 15,color: AppColor.primerycolor,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card, size: 20.sp,),
                  label: "My Card",
                  tooltip: "My Card"
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 20.sp,),
                  label: "Profile",
                  tooltip: "profile"
              ),
            ],
          onTap: onTapItem,
          elevation: 4,
          selectedItemColor: Colors.blue,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
           unselectedItemColor: AppColor.greycolor.withOpacity(0.9),
          unselectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),
          selectedFontSize: 18.sp,
          iconSize: 30.sp,
        ),
        body: Screens.elementAt(currentIndex),
      ),
    );
  }
}
