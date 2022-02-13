import 'package:flutter/material.dart';



class About extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('This app is about allowing users to order food and make reservations at restaurants',
          style: TextStyle(
            fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}