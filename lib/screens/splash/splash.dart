import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../sidenavigationbar.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 15,
      navigateAfterSeconds: SideMenuBar(),
      backgroundColor: Color(0xFFFBE9E7),
      //imageBackground: ,

      title: new Text('Brr Softwares',
          style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrangeAccent)),
      image: new Image.asset('assets/brr-loader.jpeg'),
      //loadingText: Text('Brr '),
      photoSize: 150.0,
      loaderColor: Colors.deepOrangeAccent,
    );
  }
}