import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/nu_conta_menu.dart';
import 'package:nubank_clone/screens/home/components/credit_card_menu.dart';
import 'package:nubank_clone/screens/home/components/rewards_menu.dart';

List<Widget> carouselItems() => [
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
