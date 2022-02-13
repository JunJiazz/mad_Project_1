import 'package:flutter/material.dart';
import 'package:flutter_application_1/about.dart';
import 'package:flutter_application_1/profile.dart';
import 'drawer.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'RegistrationPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  String title='Home';
  int index = 0;
  List<Widget>list = [Home(), Login(), Registration(), Profile(), About()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        //body: Home(),
        //drawer: MyDrawer(),
        body: list[index],
        drawer: MyDrawer(onTap:(context,i,txt){
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
            });
          }
        ),
      ),
    );
  }
}