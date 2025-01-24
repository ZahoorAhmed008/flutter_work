import 'package:flutter/material.dart';
import 'package:flutter_work/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: Homepage(),
    );
  }
}
