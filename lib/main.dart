import 'package:flutter/material.dart';
import 'package:flutter_work/Pages/HomePage.dart';
import 'package:flutter_work/Pages/loginpage.dart';
import 'package:flutter_work/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch: Colors.cyan,
        // primaryTextTheme:GoogleFonts.latoTextTheme()
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // Define light theme explicitly
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) =>Loginpage()
      },
    );
  }
}
