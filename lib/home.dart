import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({ this.title }) : super();
  
  final String title;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = Theme.of(context).scaffoldBackgroundColor;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: backgroundColor,
      statusBarIconBrightness: Brightness.light,
    ));
    
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Card(
          elevation: 6,
          child: Container(
            width: 380,
            height: 400,
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
