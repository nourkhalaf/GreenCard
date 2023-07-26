import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/search_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var categories = [
    {'image': 'lib/assets/rest.svg', 'title': 'Restaurants'},
    {'image': 'lib/assets/beauty.svg', 'title': 'Beauty'},
    {'image': 'lib/assets/enter.svg', 'title': 'Entertainment'},
    {'image': 'lib/assets/sports.svg', 'title': 'Sports'},
    {'image': 'lib/assets/services.svg', 'title': 'Services'},
  ];

  var offers = [
    {'image': 'lib/assets/sas.png', 'title': 'Sasa’s Pretzels'},
    {'image': 'lib/assets/item.png', 'title': 'VELOCE'},
    {'image': 'lib/assets/mixed.png', 'title': 'ALMANGAL'},
    {'image': 'lib/assets/china.png', 'title': 'China Hut'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                SearchWidget(),
                  Image.asset(
                  'lib/assets/banner.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  height: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (_, index) => CustomWidget(
                        categories[index]['image']!,
                        categories[index]['title']!),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 20,
                    ),
                  ),
                ),
               const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14))),
                    child: const Text(
                      'Nearest Offers',
                      style: TextStyle(
                          fontSize: 17,
                          //  fontWeight: FontWeight.bold,
                          fontFamily: 'Junegull'),
                    ),
                  ),
                ),
               const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color:const Color(0xFFF5F4F4),
                      boxShadow:const [
                        BoxShadow(
                            color: Color(0x29000029),
                            blurRadius: 6,
                            offset: Offset(0, 0))
                      ]),
                  height: 140,
                  padding: const EdgeInsets.only(top: 10, bottom: 8, left: 20),
                  child: Column(
                    children: [
                     const Text(
                        'Enjoy 1+1 offers',
                        style: TextStyle(
                            color: Color(0xFF115735),
                            fontSize: 20,
                            fontFamily: 'Junegull'),
                      ),
                   const   SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: offers.length,
                          itemBuilder: (_, index) => CustomWidget2(
                              offers[index]['image']!, offers[index]['title']!),
                          separatorBuilder: (context, index) =>const SizedBox(
                            width: 8,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin:const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    decoration: BoxDecoration(
                        color:const Color(0xFF8BBF4D),
                        borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      'lib/assets/b1.png',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin:const EdgeInsets.only(left: 20, right: 8),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            color:const Color(0xFF8BBF4D),
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          'lib/assets/item3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          margin:const EdgeInsets.only(right: 20, left: 8),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              color:const Color(0xFF8BBF4D),
                              borderRadius: BorderRadius.circular(8)),
                          child: Image.asset(
                            'lib/assets/item2.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class CustomWidget2 extends StatelessWidget {
  final String image, title;

  const CustomWidget2(
    this.image,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
            child: Image.asset(
              image,
              width: 108,
              height: 56,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 108,
          height: 24,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding:const EdgeInsets.symmetric(horizontal: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))),
            child:  Text(
              title,
              style: const TextStyle(
                  fontSize: 11,
                  //overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Gotham'),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomWidget extends StatelessWidget {
 final  String image, title;

 const CustomWidget(
    this.image,
    this.title, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image,width: 108,height: 56,fit: BoxFit.cover,),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gotham',
              color: Colors.black),
        ),
      ],
    );
  }
}
