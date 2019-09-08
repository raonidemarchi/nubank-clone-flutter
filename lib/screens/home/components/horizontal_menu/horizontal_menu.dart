import 'package:flutter/material.dart';
import 'package:nubank_clone/screens/home/components/horizontal_menu/horizontal_menu_card.dart';

class HorizontalMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 104,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(padding: EdgeInsets.only(left: 16)),
          HorizontalMenuCard(title: 'Transferir'),
          HorizontalMenuCard(title: 'Cobrar'),
          HorizontalMenuCard(title: 'Pagar'),
          HorizontalMenuCard(title: 'Ajustar limite'),
          HorizontalMenuCard(title: 'Depositar'),
          HorizontalMenuCard(title: 'Indicar amigos'),
          HorizontalMenuCard(title: 'Empréstimos'),
          HorizontalMenuCard(title: 'Bloquear cartão'),
          Padding(padding: EdgeInsets.only(right: 16)),
        ],
      ),
    );
  }
}
