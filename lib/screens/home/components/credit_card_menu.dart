import 'package:flutter/material.dart';

class CreditCardMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 1,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        child: Text(
          'Cartão de crédito',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
