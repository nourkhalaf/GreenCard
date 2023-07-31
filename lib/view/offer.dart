import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/search_widget.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SearchWidget(),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Color(0xFF165735),
              ),
              child: Text(
                '1+1 free',
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
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Limitless usage',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Junegull',
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset('lib/assets/green.svg'),
            SizedBox(
              height: 12,
            ),
            Text(
              'ENJOY YOUR\nGREEN PRICE!',
              style: TextStyle(
                  fontSize: 27,
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              '1',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xFF165735),
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Please give this CODE to the cashier or the\n waiter to get your DISCOUNT :)',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF165735),
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 75),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF8BBF4D)),
              child: Text(
                '195875',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '2',
              style: TextStyle(
                  fontSize: 25,
                  color:Color(0xFF165735),
                  fontFamily: 'Gotham',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFF165735)),
              child: Column(
                children: [
                  Text(
                    'Click here to get your',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'GreenPoints',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Text(
              'If you face any issue with getting your special price, please\n contact us through the following channels:',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontFamily: 'Gotham',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          //  Spacer(),
          SizedBox(height: 12,),
            Column(
             children: [
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
              
             ],
              ),
           ]),
        ));
  }
}
