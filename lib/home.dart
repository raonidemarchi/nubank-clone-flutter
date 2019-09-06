import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'carousel_slider.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: backgroundColor,
      statusBarIconBrightness: Brightness.light,
    ));
    
    return Scaffold(
      body: Center(
        child: Carousel()
      ),
    );
  }
}
