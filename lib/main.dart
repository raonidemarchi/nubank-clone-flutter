import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff7f269d),
        accentColor: Color(0xff7f269d),
        scaffoldBackgroundColor: Color(0xff7f269d),
      ),
      home: Home(),
    );
  }
}
