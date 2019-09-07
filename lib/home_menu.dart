import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16)
        ),
        
        Card(
          elevation: 0,
          color: Color(0x27ffffff),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transferir',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),

        Card(
          elevation: 0,
          color: Color(0x27ffffff),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cobrar',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
