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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          height: (MediaQuery.of(context).size.height - 190) * .8,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
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
