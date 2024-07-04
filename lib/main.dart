import 'package:flutter/material.dart';
import 'package:flutter1/School/shirt_screen.dart';
//import 'package:flutter1/School/shirt_screen.dart';
//import 'package:flutter1/School/pageview_widget.dart';
//import 'package:flutter1/School/tabbar_widget.dart';
//import 'package:flutter1/card_screen.dart';
//import 'package:flutter1/dashboard_screen.dart';
//import 'package:flutter1/card_screen.dart';
// import 'package:flutter1/School/textfield_screen.dart';
// import 'package:flutter1/School/user_screen.dart';
//import 'package:flutter1/dashboard_screen.dart';
//import 'package:flutter1/School/user_screen.dart';
//import 'package:flutter1/bank_notifi.dart';
//import 'package:flutter1/car_screen.dart';
//import 'package:flutter1/test1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        // title: 'flutter Demo',
        debugShowCheckedModeBanner: false,
        //  color: Colors.blue,
        home: ShirtScreen());
  }
}
