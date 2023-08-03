import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:green/view/chat_with_us.dart';
import 'package:green/view/details_screen.dart';
import 'package:green/view/home_screen.dart';
import 'package:green/view/map_offers.dart';
import 'package:green/view/offer.dart';
import 'package:green/view/product_details.dart';
import 'package:green/view/rate.dart';
import 'package:green/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
            Size(430, 932), // Design size of your UI in dp (width, height)
        builder: (context, _) => GetMaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                elevatedButtonTheme: ElevatedButtonThemeData(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF8BBF4D)))),
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primaryColor: Color(
                  0xFF8BBF4D,
                ),

                // primarySwatch:MaterialColor(0x8BBF4D,  { 500: Color(0x8BBF4D),})  ,
              ),
              home: HomeScreen(),
              getPages: [
                GetPage(name: '/homeScreen', page: () => HomeScreen()),
                GetPage(name: '/detailsScreen', page: () => DetailScreen()),
                GetPage(
                    name: '/productDetailsScreen',
                    page: () => ProductDetailScreen()),
                GetPage(name: '/offerScreen', page: () => OfferScreen()),
                GetPage(name: '/rateScreen', page: () => RateScreen()),
                GetPage(name: '/chatScreen', page: () => ChatScreen()),
              ],
            ));
  }
}
