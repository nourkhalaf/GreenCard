import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        body: SingleChildScrollView(
            child: Column(children: [
           Divider(
              
              height: 0,
              color: Theme.of(context).primaryColor,
              thickness: 2,
            ),       SizedBox(height: 120,),
          Text(
            'Hope your issue is resolved!',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          Text(
            'Please tell us how happy you are with our\nservice?',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Gotham',
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('lib/assets/sad.svg'),
              SizedBox(width: 20),
              SvgPicture.asset('lib/assets/smile2.svg'),
              SizedBox(width: 20),
              SvgPicture.asset('lib/assets/smile.svg'),
            ],
          ),
          SizedBox(height: 140),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "SUBMIT",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(eccentricity: 1),
                fixedSize: Size(90, 90),
                backgroundColor: Theme.of(context).primaryColor,
                side:
                    BorderSide(strokeAlign: -6, color: Colors.white, width: 1)),
          ),SizedBox(height: 100,),
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
            fontSize: 15,
             ),
              ),
            ),
     
        ])));
  }
}
