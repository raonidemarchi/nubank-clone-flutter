import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/screens/home/components/carousel.dart';
import 'package:nubank_clone/screens/home/components/menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // status bar definitions
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0),
      statusBarIconBrightness: Brightness.light,
    ));
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 80,
              width: double.maxFinite,
              child: Center(
                child: Text(
                  'Raoni',
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
            ),

            Container(
              child: HomeCarousel(),
            ),

            Container(
              padding: EdgeInsets.only(bottom: 16),
              child: HomeMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
