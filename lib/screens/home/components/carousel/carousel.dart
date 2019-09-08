import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel_dots.dart';
import 'package:nubank_clone/screens/home/components/carousel/carousel_items.dart';

class Carousel extends StatefulWidget {
  
  @override
  _Carousel createState() => _Carousel();
}

class _Carousel extends State<Carousel> {
  static List<Widget> _carouselItems = carouselItems();
  static int _carouselItemsLength = _carouselItems.length;
  static List<int> _carouselItemsLengthList = new List<int>.generate(_carouselItemsLength, (int index) => index++);

  int _current = 0;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          height: 360,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          aspectRatio: 16 / 9,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
          items: _carouselItems,
        ),

        CarouselDots(
          carouselItemsLengthList: _carouselItemsLengthList,
          current: _current,
        )
      ],
    );
  }
}
