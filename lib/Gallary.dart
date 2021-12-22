import 'package:flutter/material.dart';

class Gallary extends StatefulWidget {
  const Gallary({Key? key}) : super(key: key);

  @override
  _GallaryState createState() => _GallaryState();
}

class _GallaryState extends State<Gallary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallary Page"),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Welcome to Gallary  Page",
        style: TextStyle(
          fontSize:50,
          color: Colors.amberAccent,
        ),
        ),
      ),
    );
  }
}
