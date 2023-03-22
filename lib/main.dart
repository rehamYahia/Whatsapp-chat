import 'package:flutter/material.dart';
// import 'package:whats_app_flutter/pages/home.dart';
import 'package:whats_app_flutter/pages/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    theme: ThemeData(
      fontFamily: 'font1'
    ),
  ));
}

