import 'package:flutter/material.dart';

class HorizontalMenuCard extends StatelessWidget {
  HorizontalMenuCard({this.title});
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color.fromARGB(36, 255, 255, 255),
      child: InkWell(
        splashColor: Colors.black.withAlpha(30),
        highlightColor: Colors.black.withAlpha(30),
        onTap: () => print('Card tapped.'),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 6,
          ),
          width: 96,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 13,
                  height: 0.84,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
