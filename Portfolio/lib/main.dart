import 'package:flutter/material.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/myproject.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'about': (context) => MyAbout(),
      'home': (context) => MyHome(),
      'myproject': (context) => MyProject(),
    },
  ));
}
