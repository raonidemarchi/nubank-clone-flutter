import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      // status bar
      statusBarColor: Color(0),
      statusBarIconBrightness: Brightness.light,

      // navgitaion bar
      systemNavigationBarColor: Color.alphaBlend(Color(0x44000000), Theme.of(context).primaryColor),
      systemNavigationBarIconBrightness: Brightness.light,
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
              child: Carousel(),
            ),

            Container(
              padding: EdgeInsets.only(bottom: 16),
              child: HorizontalMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
