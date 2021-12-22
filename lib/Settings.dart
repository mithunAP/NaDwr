import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Settings Page"),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Text("Welcome to settings",
        style:TextStyle(
          fontSize: 25,
          color: Colors.green,
        ),),
      ),
    );
  }
}
