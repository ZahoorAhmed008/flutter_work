import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Hello")),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 Days Flutter"),
        ),
      ),
      drawer:Drawer() ,
    );
  }
}
