import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/search_widget.dart';

class RateScreen extends StatelessWidget {
  const RateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
                bottomNavigationBar: BottomNavBarWidget(),

        body: SingleChildScrollView(
            child: Column(children: [
           Divider(
              
              height: 0,
              color: Theme.of(context).primaryColor,
              thickness: 2,
            ),       SizedBox(height: 120.h,),
          Text(
            'Hope your issue is resolved!',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
            ),
          ),
          SizedBox(height: 10.h,),
          Text(
            'Please tell us how happy you are with our\nservice?',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 100.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/sad.svg'),
              SizedBox(width: 20.w),
              SvgPicture.asset('lib/assets/smile2.svg'),
              SizedBox(width: 20.w),
              SvgPicture.asset('lib/assets/smile.svg'),
            ],
          ),
          SizedBox(height: 140.h),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "SUBMIT",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
                fontSize: 11.sp,
              ),
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.symmetric(horizontal: 13.w),
                fixedSize: Size(90.h, 90.w),
                backgroundColor: Theme.of(context).primaryColor,
                side:
                    BorderSide(strokeAlign: -6, color: Colors.white, width: 1.w)),
          ),SizedBox(height: 100.h,),
              Divider(
              
              height: 0,
              color: Theme.of(context).primaryColor,
              thickness: 2,
            ),    Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(
             'support@greencard-sa.com | 800 238 84 77',
             style: TextStyle(
            fontFamily: 'Gotham',
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
            fontSize: 15.sp,
             ),
              ),
            ),
     
        ])));
  }
}
