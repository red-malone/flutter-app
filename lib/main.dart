import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'section1.dart';
import 'colors.dart';
import 'section2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  const MyHomePage({super.key, required this.title});

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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.grey,)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message,color: Colors.grey,)),
          SizedBox(width: 1),
          IconButton(onPressed: (){}, icon: Icon(Icons.ring_volume_outlined,color: Colors.grey,))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Container(
                padding: EdgeInsets.all(10),
                  color: "#EEF3FD".toColor(),
                  child: first()
              ),
              Container(
                child: Column(
                  children: [
                    second(),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
          selectedItemColor:Colors.blue ,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label:"Learn" ,
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.apps_sharp),
                label: 'Hub',
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.chat_bubble_outline),
                label: 'Chat',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
            ),
          ]),
    );
  }
}
