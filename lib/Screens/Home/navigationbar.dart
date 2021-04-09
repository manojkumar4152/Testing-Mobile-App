import 'package:brrmobileapp/Screens/Contact/contact.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';


class Bottomnavigation extends StatefulWidget {
  @override
  _BottomnavigationState createState() =>_BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int _selectedindex = 0;
  static  TextStyle optionStyle = TextStyle(
      fontSize: 30,fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions=
  <Widget>[
    HomePage(),
    MyCustomForm(),

    Text(
      'profile',
      style:optionStyle,
    )
      ];
  void _onItemTapped(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigoAccent,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:"Home",
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label:"profile",
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.contact_page),
            label:"Contact",
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.indigo,
        onTap: _onItemTapped,
      ),
    );
  }
}