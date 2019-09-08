import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Raoni',
                  style: Theme.of(context).textTheme.display4,
                ),
              ),
            ),

            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 200,
              ),
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Carousel(),
              ),
            ),

            Container(
              padding: EdgeInsets.only(bottom: 16, top: 4),
              child: HorizontalMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
