import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height) * .2,
              alignment: Alignment.center,
              child: Text(
                'Raoni',
                style: Theme.of(context).textTheme.display4,
              ),
            ),

            Container(
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Carousel(),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: HorizontalMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
