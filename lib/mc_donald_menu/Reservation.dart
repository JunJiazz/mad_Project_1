import 'package:flutter/material.dart';




class Reservation extends StatefulWidget {
  @override
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<Reservation> {
  late DateTime _dateTime;

  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text(_dateTime == null ? 'Nothing has been picked yet' : _dateTime.toString()),
          RaisedButton(
            child: Text('Pick a date'),
            onPressed: (){
              showDatePicker(
                context: context, 
                initialDate: DateTime.now(), 
                firstDate: DateTime(2022), 
                lastDate: DateTime(2022)
              ).then((date) {
                setState(() {
                  _dateTime = date!;
                });
              });
            },
          )
        ],
      ),
    );
  }
}
