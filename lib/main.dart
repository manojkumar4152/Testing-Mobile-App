import 'package:brrmobileapp/Screens/detailspage.dart';
import 'package:brrmobileapp/Screens/sidenavigationbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This is the root widget of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BRR Mobile Application',
      /*
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.yellowAccent,
      ),

       */
      home: Details(),

    );
  }
}