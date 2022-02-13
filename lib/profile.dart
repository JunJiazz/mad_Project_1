import 'package:flutter/material.dart';

class Profile extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          CircleAvatar(
            radius: 80,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/superhero.jpg'),
              radius: 78,
            ),
            
          ),
          Text('test')
        ],
      ),
    );
  }
}