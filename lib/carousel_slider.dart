import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 420,
      viewportFraction: 1.0,
      enableInfiniteScroll: false,
      aspectRatio: 16 / 9,
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              child: Card(
                elevation: 6,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
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
    );
  }
}
