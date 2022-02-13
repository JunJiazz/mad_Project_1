import 'package:flutter/material.dart';
import 'drawer.dart';
import 'HomePage.dart';
import 'main.dart';



class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {

  @override
  Widget build(BuildContext context) {

    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    
    final txtUserName = TextField(
      controller: usernameController,
      decoration: InputDecoration(
        hintText: 'Username',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
      )
    );

    final txtPassword = TextField(
      controller: passwordController,
      obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0))
        )
    );

    final btnLogin = RaisedButton(
      child: Text('Login'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      onPressed: () {
        if(usernameController != null && usernameController.text == "test"
        && passwordController != null && passwordController.text == "123")
          {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => Stack(
                    children: [
                      MyApp(),
                  ],
                ),
              ),
            );
        }
      },
    );
    return new Scaffold(
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 25,right: 25),
          children: <Widget>[
            SizedBox(height: 20.0,),
            txtUserName,
            SizedBox(height: 8.0,),
            txtPassword,
            SizedBox(height: 20.0,),
            btnLogin,
          ],
        ),
      )
    );
  }
}