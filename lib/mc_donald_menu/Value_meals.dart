import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';


class Value extends StatelessWidget
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
              'images/mc_spicy.png'
            ),
            title: Text('Mc Spicy'),
            subtitle: Text(r'$8.50'),
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
              'images/buttermilk.png'
            ),
            title: Text('Buttermilk Crispy Chicken'),
            subtitle: Text(r'$9.65'),
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
              'images/Filet-o-fish.png'
            ),
            title: Text('Filet-O-Fish'),
            subtitle: Text(r'$6.55'),
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