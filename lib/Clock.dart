import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Clock page"),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Text("Welcome to Clock Pagee",
       style: TextStyle(
         fontSize: 25,
         color: Colors.blue,
       ),
        ),
      ),
    );
  }
}
