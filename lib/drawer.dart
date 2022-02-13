import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
final Function onTap;

MyDrawer({required this.onTap});
  @override 

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/mc_donald.jpg'),
                      ),
                    ),
                    SizedBox(height: 3,),
                    Text('test',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=> onTap(context, 0, 'Home'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Sign In'),
              onTap: ()=> onTap(context, 1, 'Sign In'),
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Sign Up'),
              onTap: () => onTap(context, 2, 'Sign Up'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => onTap(context, 3, 'Profile'),
            ),
            ListTile(
              leading: Icon(Icons.book_rounded),
              title: Text('About'),
              onTap: () => onTap(context, 4, 'About'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () => onTap(context, 0, 'Home'),
            ),
          ],
        ),
      ),
    );
  }
}