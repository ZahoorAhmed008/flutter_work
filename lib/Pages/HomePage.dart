import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Hello")),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Container(
          child: const Text("Welcome to 30 Days Flutter"),
        ),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // AppBar-like container
            Container(
              color: Colors.lightBlueAccent,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(width: 10), // Space between icon and text
                  const Text(
                    "Zahoor Ahmed",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Content below the header
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                      onTap: () {
                        // Action for Home
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                      onTap: () {
                        // Action for Settings
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.info),
                      title: Text("About"),
                      onTap: () {
                        // Action for About
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
