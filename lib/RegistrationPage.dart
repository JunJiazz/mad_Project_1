import 'package:flutter/material.dart';

class Registration extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget{

  @override
  RegistrationFormState createState(){
    return RegistrationFormState();
  }
}

class RegistrationFormState extends State<RegistrationForm>{
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText:'Name', 
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.email),
              hintText: 'Enter your email',
              labelText:'Email', 
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.password),
              hintText: 'Enter a password',
              labelText:'Password', 
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText:'Date Of Brth', 
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.phone),
              hintText: 'Enter your phone number',
              labelText:'Phone', 
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: const Icon(Icons.home),
              hintText: 'Enter your address',
              labelText:'Address', 
            ),
          ),
        ],
      ),
    );
  }
}