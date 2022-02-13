import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';
import 'package:flutter_application_1/menu1.dart';




class Home extends StatefulWidget{
    

  @override 

  HomePageState createState(){
    return HomePageState();
  }
}

class HomePageState extends State<Home>
{
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Discover', 
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildTopChip("Fast Food", true),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: <Widget>[
                    buildItem(
                      'Mc Donald', 
                      '133 Canberra View, 01-01/02 03/28, Singapore 750133',
                    ),
                    buildItem1(
                      'KFC', 
                      '133 Canberra View, #01-09, Singapore 750133',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  GestureDetector buildItem(String title, String subTitle){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Menu())
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/mc_donald.jpg'),
                  fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(10.0),
                 topRight: Radius.circular(10.0),
               ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Colors.grey,
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
    
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  GestureDetector buildItem1(String title, String subTitle){
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => Menu())
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.0),
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/kfc.jpg'),
                  fit: BoxFit.cover,
               ),
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(10.0),
                 topRight: Radius.circular(10.0),
               ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                    color: Colors.grey,
                  )
                ]
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Container buildTopChip(String label, bool isActive){
    return Container(
      child: Chip(
        padding: EdgeInsets.all(8.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        backgroundColor: isActive ? Colors.orange : Colors.grey,
      ),
    );
  }
}