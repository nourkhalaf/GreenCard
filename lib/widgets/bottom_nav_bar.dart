import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
      int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
        backgroundColor:Color(0xFF165735),
        currentIndex:  selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items:   <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/home.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/chat.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/logo.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/star_bar.svg'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('lib/assets/profile.svg'),
            label: '',
          ),
        ],
       
    );
  }

    void _onItemTapped(int index) {
    setState(() {
     selectedIndex = index;
    });

    // Handle navigation when the tab is tapped
    switch (index) {
      case 0:
      Get.toNamed('/homeScreen');
     //   Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Get.toNamed('/chatScreen');
      //  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
        break;
        case 3:
        //  Get.toNamed('homeScreen');
        break;
        case 4: 
        //  Get.toNamed('homeScreen');
          break; 
      // Add more cases for other tabs if you have additional screens.
      default:
        break;
    }
  }
}
