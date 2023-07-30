import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';

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
      body: Column(children: [
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
              fontSize: 15,
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 2,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130.0, top: 60),
                child: customButton('DISCOUNT ISSUE'),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 55,
                  ),
                  customButton('USER ACTIVATION'),
                  SizedBox(
                    width: 14,
                  ),
                  customButton('PROFILE ISSUE'),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 28,
                  ),
                  customButton('MERCHANTS'),
                  SizedBox(
                    width: 14,
                  ),
                  customButton('PAYMENTS ISSUE'),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 94,
                  ),
                  customButton('BOOKING ISSUE'),
                  SizedBox(
                    width: 14,
                  ),
                  customButton('POINTS ISSUE'),  
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 162.0),
                child: customButton('RESERVATION ISSUE', width: 170),
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
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
              fontSize: 15,
            ),
          ),
        ),
      ]),
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
      width: width ?? 146,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: EdgeInsetsDirectional.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, fontFamily: 'Gotham'),
        ),
      ),
    );
  }
}
