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
      mainAxisAlignment: MainAxisAlignment.center,
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
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Card(
                    elevation: 1,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        vertical: 32,
                        horizontal: 24,
                      ),
                      child: Text(
                        'title 2',
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
            padding: EdgeInsets.symmetric(
              vertical: 4
            ),
            child: Text(
              '$_current',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.9)
              ),
            ),
          ),
        )
      ],
    );
  }
}
