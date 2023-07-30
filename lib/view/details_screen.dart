import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/search_widget.dart';

class DetailScreen extends StatelessWidget {
  var items=['ASIAN','BREAKFAST','LEBANESE', 'AMERICAN','italian'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(color: Color(0xFF165735), boxShadow: [
                BoxShadow(
                  color: Color(0x29000000),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                ),
              ]),
              child: Text(
                'RESTAURANTS & CAFES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Junegull',
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Color(0xFFF5F4F4),
              padding: EdgeInsets.all(8),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomWidget2(items[index]),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 5,
                      ),
                  itemCount: items.length),
            ),
            // Container(
            //   width: double.infinity,
            //   color: Color(0xFFF5F4F4),
            //   padding: EdgeInsets.all(12),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       CustomWidget(),
            //       Container(
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(14),
            //             color: Color(0xFF8BBF4D)),
            //         child: Text(
            //           'BREAKFAST',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontFamily: 'Junegull',
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(14),
            //             color: Color(0xFF8BBF4D)),
            //         child: Text(
            //           'LEBANESE',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontFamily: 'Junegull',
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(14),
            //             color: Color(0xFF8BBF4D)),
            //         child: Text(
            //           'AMERICAN',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontFamily: 'Junegull',
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.all(5),
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(14),
            //             color: Color(0xFF8BBF4D)),
            //         child: Text(
            //           'italian',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontFamily: 'Junegull',
            //             fontSize: 16,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 12,
                itemBuilder: (_, index) =>
                    CustomWidget('lib/assets/mixed.png', 'Spoon & Glaze'),
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomWidget2 extends StatelessWidget {
  final String title;
  const CustomWidget2(
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Color(0xFF8BBF4D)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Junegull',
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String image, title;

  const CustomWidget(
    this.image,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              image,
              width: 147,
              height: 72,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Gotham',
                      color: Colors.black),
                ),
                SizedBox(height: 4),
                Text(
                  'Jeddah, Mall of Arabia',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GothamBook',
                      color: Theme.of(context).primaryColor),
                ),
                SizedBox(height: 2),
                Text(
                  'Coffee and sweets in pottery',
                  style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GothamBook',
                      color: Color(0xFF165735)),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Theme.of(context).primaryColor),
                  width: 82,
                  height: 18,
                  child: Center(
                    child: Text(
                      '15% Discount',
                      style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Gotham'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset('lib/assets/star.svg'),
              Spacer(),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Image.asset(
                  image,
                  width: 35,
                  height: 32,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
