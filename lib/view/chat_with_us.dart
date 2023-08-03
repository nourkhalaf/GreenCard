import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/search_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min,
        children: [
                 Divider(
                   height: 0.h,
                   color: Theme.of(context).primaryColor,
                   thickness: 2,
                 ),
                 Padding(
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
   
          BottomNavBarWidget(),
        ],
      ),
      body: ListView(
        children: [
          SearchWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xFF165735),
            ),
            child: Text(
              'CHAT WITH US',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Junegull',
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 10),
            child: Text(
              'Please choose one of the subjects below that is related to the issue…',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15.sp,
              ),
            ),
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          SubjectsWidget(),
        ],
      ),
    );
  }
}

class SubjectsWidget extends StatelessWidget {
  const SubjectsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         SizedBox(height: 60.h,),
          Row(
            children: [
              SizedBox(width: 130.w,),
              customButton('DISCOUNT ISSUE'),
            ],
          ),
      
        SizedBox(
          height: 14.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 55.w,
            ),
            customButton('USER ACTIVATION'),
            SizedBox(
              width: 14.w,
            ),
            customButton('PROFILE ISSUE'),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 28.w,
            ),
            customButton('MERCHANTS'),
            SizedBox(
              width: 14.w,
            ),
            customButton('PAYMENTS ISSUE'),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 94.w,
            ),
            customButton('BOOKING ISSUE'),
            SizedBox(
              width: 14.w,
            ),
            customButton('POINTS ISSUE'),
          ],
        ),
        SizedBox(
          height: 14.h,
        ),
       
          Row(
            children: [
              SizedBox(width: 162.w,),
         customButton('RESERVATION ISSUE', width: 157.w),
            ],
          ),
      ],
    );
  }
}

class customButton extends StatelessWidget {
  final String title;
  double? width;
  customButton(
    this.title, {
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 146.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: EdgeInsetsDirectional.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham'),
        ),
      ),
    );
  }
}
