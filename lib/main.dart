import 'package:flutter/material.dart';
import 'package:flutter_work/Pages/HomePage.dart';
import 'package:flutter_work/Pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: Homepage(),
      themeMode: ThemeMode.dark, // Ensure this is present
      theme: ThemeData(
          primarySwatch: Colors.cyan), // Define light theme explicitly
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => Loginpage(),
        "/Loginpage": (context) => Homepage()
      },
    );
  }
}
