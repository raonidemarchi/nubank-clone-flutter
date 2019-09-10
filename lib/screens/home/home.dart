import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu.dart';

class Home extends StatefulWidget {
  
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  double _cardDown = 0;
  double _carouselHeight = 0;
  double _horizontalMenuHeight = 0;
  GlobalKey _keyCarousel = GlobalKey();
  GlobalKey _keyHorizontalMenu = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }

  _afterLayout(_) {
    final RenderBox renderCarousel = _keyCarousel.currentContext.findRenderObject();
    final RenderBox renderHorizontalMenu = _keyHorizontalMenu.currentContext.findRenderObject();

    setState(() {
      _carouselHeight = renderCarousel.size.height;
      _horizontalMenuHeight = renderHorizontalMenu.size.height;
    });
  }

  Widget build(BuildContext context) {  
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: _carouselHeight + _horizontalMenuHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => setState(() {
                      _cardDown = _cardDown == 0 ? -_carouselHeight + _horizontalMenuHeight : 0;
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

            AnimatedPositioned(
              key: _keyCarousel,
              duration: Duration(milliseconds: 100),
              right: 0,
              left: 0,
              bottom: _cardDown != 0 ? _cardDown : _horizontalMenuHeight,
              child: Carousel(),
            ),

            AnimatedPositioned(
              key: _keyHorizontalMenu,
              duration: Duration(milliseconds: 100),
              right: 0,
              left: 0,
              bottom: 16,
              child: HorizontalMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
