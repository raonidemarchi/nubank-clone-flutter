import 'package:flutter/material.dart';

class NuContaMenu extends StatelessWidget {

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
          'NuConta',
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
