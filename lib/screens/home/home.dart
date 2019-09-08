import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            height: (MediaQuery.of(context).size.height - 190) * .2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Raoni',
                  style: Theme.of(context).textTheme.display4,
                ),
              ],
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 124,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Carousel(),
              ],
            ),
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: HorizontalMenu(),
          ),
        ]),
      ),
    );
  }
}
