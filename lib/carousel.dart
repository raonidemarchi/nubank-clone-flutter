import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  @override
  _Carousel createState() => _Carousel();
}

class _Carousel extends State<Carousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
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
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    elevation: 1,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Text(
                        'title',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [0, 1, 2].map((i) {
                return Container(
                  width: 4,
                  height: 4,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == i ? Colors.white : Color.fromRGBO(255, 255, 255, .3)
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
