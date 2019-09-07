import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/menu_card.dart';

class HomeMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 104,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(padding: EdgeInsets.only(left: 16)),
          HomeMenuCard(title: 'Transferir'),
          HomeMenuCard(title: 'Cobrar'),
          HomeMenuCard(title: 'Pagar'),
          HomeMenuCard(title: 'Ajustar limite'),
          HomeMenuCard(title: 'Depositar'),
          HomeMenuCard(title: 'Indicar amigos'),
          HomeMenuCard(title: 'Empréstimos'),
          HomeMenuCard(title: 'Bloquear cartão'),
          Padding(padding: EdgeInsets.only(right: 16)),
        ],
      ),
    );
  }
}
