import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../widgets/bottom_nav_bar.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageCount = 3;

    return Scaffold(
      backgroundColor: Colors.white,
              bottomNavigationBar: BottomNavBarWidget(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: 344.h,
                    width: double.infinity,
                    child: Expanded(
                      child: PageView(
                          controller: _pageController,
                          onPageChanged: (page) {
                            setState(() {
                              selectedPage = page;
                            });
                          },
                          children: [
                            Image.asset('lib/assets/soul.png',fit: BoxFit.cover,),
                            Image.asset('lib/assets/soul.png',fit: BoxFit.cover,),
                            Image.asset('lib/assets/soul.png',fit: BoxFit.cover,),
                          ]),
                    ),
                  ),
                  Positioned(
                    bottom: 45.h,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: PageViewDotIndicator(
                        currentItem: selectedPage,
                        count: pageCount,
                        unselectedColor: Colors.white.withOpacity(0.7),
                        selectedColor: Colors.white,
                        duration: Duration(milliseconds: 200),
                        boxShape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    height: 30.h,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      color: Color(0xFF8BBF4D),
                    ),
                    child: Center(
                        child: Text('Soul Cafe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontFamily: 'Gotham',
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                  Positioned(
                      top: 56.h,
                      right: 20.w,
                      child: Row(
                        children: [
                          InkWell(
                            child:
                                SvgPicture.asset('lib/assets/star_circle.svg'),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          InkWell(
                            child: SvgPicture.asset('lib/assets/upload.svg'),
                          )
                        ],
                      )),
                  Positioned(
                    top: 56.h,
                    left: 20.w,
                    child: InkWell(
                      child: SvgPicture.asset('lib/assets/back.svg'),
                    ),
                  )
                ],
              ),
              Container(
                height: 272.h,
               width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                   
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  color: Color(0xFFF5F4F4),
                ),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(12, 8, 12, 0),
                    child: Row(
                      children: [
                        Icon(Icons.access_time_filled),
                        Text(
                          ' 6:00am - 11:30pm',
                          style: TextStyle(
                            color: Color(0xFF165735),
                            fontSize: 10.sp,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Icon(Icons.location_on),
                        Text(
                          ' Jeddah, Muhamadiyah',
                          style: TextStyle(
                            color: Color(0xFF165735),
                            fontSize: 10.sp,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.white, thickness: 2),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Icon(Icons.local_parking),
                        Icon(Icons.wifi),
                      ],
                    ),
                  ),
                  Divider(color: Colors.white, thickness: 2),
                  Container(
                     margin: EdgeInsets.symmetric(horizontal: 20),
                   
                    child: Image.asset('lib/assets/map.png')),
                  SizedBox(
                    height: 17.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            child: Text(
                              'Discount',
                              style:   TextStyle(
                                  fontSize: 11.sp,
                                  //overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gotham'),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Expanded( 
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            child: Text(
                              'Branches',
                              style:   TextStyle(
                                  fontSize: 11.sp,
                                  //overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gotham'),
                            ),
                          ),
                        ),                        SizedBox(width: 5.w,),

                        Expanded( 
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14))),
                            child: Text(
                              'Menu',
                              style:   TextStyle(
                                  fontSize: 11.sp,
                                  //overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gotham'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
                child: SizedBox(
                  height: 208.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => customWidget(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 9.w,
                    ),
                    itemCount: 5,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customWidget extends StatelessWidget {
  const customWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208,
      width: 157,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFC6C2C2),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '1+1 Free',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC6C2C2)),
                ),
                Icon(
                  Icons.lock,
                  color: Color(0xFFC6C2C2),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
            color: Color(0xFFC6C2C2),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'On Drinks',
              style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFC6C2C2)),
            ),
          ),
          Divider(
            thickness: 2,
            color: Color(0xFFC6C2C2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '• Valid in week days only\n• Valid till 5pm\n• Not available in Ramadan',
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFC6C2C2)),
            ),
          ),
          Spacer(),
          Container(
            color: Color(0xFFC6C2C2),
            height: 54,
            width: 157,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Use The Offer',
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Limitless Usage',
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
