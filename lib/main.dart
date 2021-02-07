import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen.dart';
import 'NombresPage.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
