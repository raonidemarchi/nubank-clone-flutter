import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatefulWidget {
  
  @override
  _Home createState() => _Home();
}



class _Home extends State<Home> {
  double _cardDown = 0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height * .3 - 108,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      _cardDown = _cardDown == 0 ? 400 : 0;
                    }),
                    child: Text(
                      'Raoni',
                      style: Theme.of(context).textTheme.display4,
                    ),
                  ),

                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              child: Transform.translate(
                offset: Offset(0, _cardDown),
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
