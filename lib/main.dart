import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Nubank',
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff7f269d),
        accentColor: Color(0xff7f269d),
        scaffoldBackgroundColor: Color(0xff7f269d),
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 14, letterSpacing: 0.25, color: Colors.white),
          display4: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0),
        ),
      ),
    );
  }
}
