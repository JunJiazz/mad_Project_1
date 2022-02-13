import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'mc_donald_menu/promotion.dart';
import 'mc_donald_menu/Value_meals.dart';
import 'mc_donald_menu/recommended.dart';
import 'mc_donald_menu/Reservation.dart';

class Menu extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading:  IconButton(
              icon:Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context, false);
              },
            ),
            title: Text('Menu'),
            bottom: TabBar(
              tabs: [
                Tab(text: 'Recomended'),
                Tab(text: 'Promotion'),
                Tab(text: 'Value Meals'),    
                Tab(text: 'Make Reservation'),   
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Recommended(),
              Promotion(),
              Value(),
              Reservation(),
            ],
          ),
        ),
      ),
    );
  }
}