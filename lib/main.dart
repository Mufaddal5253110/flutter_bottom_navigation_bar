import 'package:flutter/material.dart';
// /import 'package:flutter_bottom_naviation_bar/bottom_1.dart';
// import 'package:flutter_bottom_naviation_bar/bottom_2.dart';
import 'package:flutter_bottom_naviation_bar/bottom_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navifation Bar',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: BottomNavThree(),
    );
  }
}
