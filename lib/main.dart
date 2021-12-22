import 'package:flutter/material.dart';
import 'package:navigatordrawer/Account.dart';
import 'package:navigatordrawer/Home.dart';
import 'package:navigatordrawer/Message.dart';
import 'package:navigatordrawer/Notifications.dart';

import 'Camera.dart';
import 'Clock.dart';
import 'Gallary.dart';
import 'Settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentPosition =0;
  final _pages =[
    Home(),
    Message(),
    Account(),
    Notifications(),
  ];

  @override
  void initState() {
    _tabController =TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [Tab(
            icon: Icon(Icons.home),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.message),
            text: "Message",
          ),
            Tab(
            icon: Icon(Icons.account_box),
            text: "Account",
          ),
            Tab(
              icon:Icon(Icons.notifications),
              text: "Notifications",
            ),
          ],
          onTap: (position) {
            setState(() {
              print (position);
            });
          },
        ),

        title: Text('Mithun Mandal'),
      ),
      body: _pages[_currentPosition],
      drawer: Drawer(
        child:ListView(
         children: [
           UserAccountsDrawerHeader(accountName: Text("Mithun Chandra Mandal"),
             accountEmail: Text("mail.mithunmandal@gmail.com"),
              currentAccountPicture:Image.network('https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_960_720.jpg',
              height:500,
                width:500,
              ),),
           ListTile(
             leading: Icon(Icons.camera),
             title: Text("Camera"),
             trailing: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqEqyCNrL1dHh9AMUhHIFV48T2Z0WwAg_a5w&usqp=CAU"),
             onTap: (){
             Navigator.push(context,MaterialPageRoute(
             builder:(context)=> Camera(),
             ),
             );
             },
           ),
           ListTile(
             leading: Icon(Icons.settings),
             title: Text("Settings"),
             trailing: Icon(Icons.arrow_forward_ios,
             ),
             onTap: (){
               Navigator.push(
                 context,MaterialPageRoute(
                 builder:(context)=> Settings(),
               ),
               );
             },
           ),
           ListTile(
             leading:Image.network("https://m.media-amazon.com/images/I/812L5zyAmpL._AC_SL1500_.jpg",
             height: 20,
               width: 20,
             ),
             title: Text("Clock"),
             trailing: Icon(Icons.arrow_forward_ios,
             ),
             onTap: (){
               Navigator.push(
                 context,MaterialPageRoute(
                 builder:(context)=> Clock(),
               ),
               );
             },
           ),
           ListTile(
             leading: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Icons8_flat_gallery.svg/1024px-Icons8_flat_gallery.svg.png",
             height: 25,
               width: 25,
             ),
             title: Text("Gallary"),
             trailing: Icon(Icons.arrow_forward_ios,
             ),
             onTap: (){
               Navigator.push(
                 context,MaterialPageRoute(
                 builder:(context)=> Gallary(),
               ),
               );
             },
           ),

        ],
        )
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.message,
        color: Colors.red,),label: 'Message',),
        BottomNavigationBarItem(icon: Icon(Icons.person,
        color: Colors.red,),label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications,
        color: Colors.red,),label: 'Notifications',),

      ],
      ),

    );
  }
}
