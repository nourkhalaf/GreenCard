import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/search_widget.dart';

class MapScreen extends StatefulWidget {

  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
//   late  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
                bottomNavigationBar: BottomNavBarWidget(),

        body: Column(children: [
          SearchWidget(),
           Container(
          width: double.infinity,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color(0xFF165735),
          ),
          child: Text(
            'NEAREST OFFERS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Junegull',
              color: Colors.white,
              fontSize: 17.sp,
            ),
          ),
        ),
        // Expanded(child: 
        // GoogleMap(
        // onMapCreated: (GoogleMapController controller) {
        //   mapController = controller;
        // },
        // initialCameraPosition: CameraPosition(
        //   target: LatLng(37.7749, -122.4194), // San Francisco coordinates
        //   zoom: 12.0,
        // ),))
       
        ]));
  }
}
