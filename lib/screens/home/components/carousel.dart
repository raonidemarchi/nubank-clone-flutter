import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nubank_clone/screens/home/components/nu_conta_menu.dart';
import 'package:nubank_clone/screens/home/components/credit_card_menu.dart';
import 'package:nubank_clone/screens/home/components/rewards_menu.dart';

class HomeCarousel extends StatefulWidget {
  
  @override
  _HomeCarousel createState() => _HomeCarousel();
}

class _HomeCarousel extends State<HomeCarousel> {
  int _current = 0;
  List<Widget> carouselMenus = [
    Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CreditCardMenu(),
    ),

    Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: NuContaMenu(),
    ),

    Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: RewardsMenu(),
    ),
  ];

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
          items: carouselMenus,
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
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2.5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == i ? Colors.white : Color.fromRGBO(255, 255, 255, .3),
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
