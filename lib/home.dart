import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'carousel_slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // status bar definitions
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Color(0x00000000),
      statusBarIconBrightness: Brightness.light,
    ));
    
    return Scaffold(
      body: Center(
        child: Carousel()
      ),
    );
  }
}
