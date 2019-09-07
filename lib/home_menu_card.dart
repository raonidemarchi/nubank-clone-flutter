import 'package:flutter/material.dart';

class HomeMenuCard extends StatelessWidget {
  HomeMenuCard({this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromARGB(36, 255, 255, 255),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 96,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 13, letterSpacing: -0.5),
            ),
          ],
        ),
      ),
    );
  }
}
