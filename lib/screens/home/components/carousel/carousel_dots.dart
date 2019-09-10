import 'package:flutter/material.dart';

class CarouselDots extends StatelessWidget {
  CarouselDots({
    this.carouselItemsLengthList,
    this.current,
  });
  
  final List<int> carouselItemsLengthList;
  final int current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: carouselItemsLengthList.map((i) {
        return Container(
          width: 4,
          height: 4,
          margin: EdgeInsets.symmetric(vertical: 16, horizontal: 2.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: current == i ? Colors.white : Color.fromRGBO(255, 255, 255, .3),
          ),
        );
      }).toList(),
    );
  }
}
