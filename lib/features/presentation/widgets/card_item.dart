import 'package:finance_app2/core/resource/app_assets.dart';
import 'package:finance_app2/core/resource/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardItem extends StatelessWidget {
  final String balance;
  final String pass;
  final String date;
  final Color color;
    CardItem({super.key, required this.balance, required this.pass, required this.date, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r), color: color),
          ),

              Positioned(
                  top: 165,
                  left: 0,
                  child: Image.asset(AppAssets.layer2,width: 153.w,fit: BoxFit.fill,)
              ),
              Positioned(
                  top: 83,
                  right: 10,
                  child: Image.asset(AppAssets.layer1,width: 277.w,fit: BoxFit.fill)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h,),
                    Text("X-Card" , style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700 ,color: Colors.white),),
                    SizedBox(height: 57.h,),
                    Text("Balance" , style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white.withOpacity(0.48)),),
                    SizedBox(height: 8.h,),
                    Text(balance , style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold ,color: Colors.white),),
                    SizedBox(height: 60.h,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(pass , style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white.withOpacity(0.56)),),
                        SizedBox(width: 65.w,),
                        Text(date , style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700 ,color: Colors.white),),
                      ],
                    )
                  ],
                ),
          ),

      ],
    );
  }
}
