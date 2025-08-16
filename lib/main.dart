import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls_screen.dart';
import 'package:whatsapp_ui/chats_screen.dart';
import 'package:whatsapp_ui/updates_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
          fontFamily: 'RobotoSlab',
      ),
      home: homeWithTab(),
    );

  }
}
class homeWithTab extends StatefulWidget {
  const homeWithTab({super.key});

  @override
  State<homeWithTab> createState() => _homeWithTabState();
}

class _homeWithTabState extends State<homeWithTab> {
  int _index=0;
  final List<Widget> _pages = [
  chats_sc(),
  updates(),
  calls(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages.elementAt(_index),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedIndex){
          setState(() {
            _index = selectedIndex;
          });
        },
        selectedItemColor: Color(0xff25D366),
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
        ),
        backgroundColor: Colors.white,
        iconSize: 25,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.video_camera_back_outlined), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.call_outlined), label: 'Calls'),
        ],
      ),
    );
  }
}
