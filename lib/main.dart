import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/screens/home/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final Color _primaryColor = Color(0xff7f269d);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      // status bar
      statusBarColor: Color(0),
      statusBarIconBrightness: Brightness.light,

      // navgitaion bar
      systemNavigationBarColor: Color.alphaBlend(Color(0x66000000), _primaryColor),
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Nubank',
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _primaryColor,
        scaffoldBackgroundColor: _primaryColor,
        fontFamily: 'Nunito',
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 14, letterSpacing: 0.25, color: Colors.white),
          display4: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 0),
        ),
      ),
    );
  }
}
