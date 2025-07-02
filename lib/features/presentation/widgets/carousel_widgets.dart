import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:finance_app2/features/presentation/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CarouselWidgets extends StatefulWidget {
  const CarouselWidgets({super.key});

  @override
  State<CarouselWidgets> createState() => _CarouselWidgetsState();
}

class _CarouselWidgetsState extends State<CarouselWidgets> {
   int currentPage =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 280.h,
            aspectRatio: 16/9,
            viewportFraction: 0.7,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOutExpo,
            enlargeCenterPage: true,
            enlargeFactor: 0.1,

            scrollDirection: Axis.horizontal,
            padEnds: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentPage = index;
              });
            },
          ),
          items: [
            CardItem(pass: "****  3434",balance: "24000 EG",date: "12/09",color: AppColor.primerycolor,),
            CardItem(pass: "****  5588",balance: "50000 EG",date: "11/11",color: Colors.green.withOpacity(0.9),),
            CardItem(pass: "****  2976",balance: "70000 EG",date: "17/11",color: Colors.orange.withOpacity(0.8),),
          ],
        ),
          DotsIndicator(
    dotsCount: 3,
    position: currentPage.toDouble(),
    decorator: DotsDecorator(
    // size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    )

    ],
    );
  }
}
