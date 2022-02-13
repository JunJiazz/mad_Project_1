import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';


class Promotion extends StatelessWidget
{
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            ),
          
          ListTile(
            leading: Image.asset(
              'images/Prosperity_beef_burger.png'
            ),
            title: Text('2x Value Meal: 2 Prosperity Beef LEVM'),
            subtitle: Text(r'$21.00'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               IconButton(
                 icon: Icon(Icons.add_shopping_cart),
                 onPressed: (){
                   Navigator.push(
                     context, 
                   MaterialPageRoute(
                     builder: (context) => cart()
                   ));
                 }),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            ),
          ListTile(
            leading: Image.asset(
              'images/Prosperity_chicken_burger.png'
            ),
            title: Text('2x Value Meal: 2 Prosperity Chicken LEVM'),
            subtitle: Text(r'$21.00'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               IconButton(
                 icon: Icon(Icons.add_shopping_cart),
                 onPressed: (){
                   Navigator.push(
                     context, 
                   MaterialPageRoute(
                     builder: (context) => cart()
                   ));
                 }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            ),
          ListTile(
            leading: Image.asset(       
              'images/Prosperity_beef_feast.png'
            ),
            title: Text('Prosperity Beef Feast'),
            subtitle: Text(r'$12.05'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
               IconButton(
                 icon: Icon(Icons.add_shopping_cart),
                 onPressed: (){
                   Navigator.push(
                     context, 
                   MaterialPageRoute(
                     builder: (context) => cart()
                   ));
                 }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}