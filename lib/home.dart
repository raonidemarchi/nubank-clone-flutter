import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'carousel.dart';
import 'home_menu.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Center(
                child: Text(
                  'Raoni',
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
            ),

            Container(
              child: Carousel(),
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
