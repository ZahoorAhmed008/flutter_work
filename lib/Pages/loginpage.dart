import 'package:flutter/material.dart';
import 'package:flutter_work/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginPic.png",
              fit: BoxFit.cover,
              height: 250,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: " Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: " Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 65 : 200,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape:
                            changeButton ? BoxShape.circle : BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular(8)
                      ),
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text(
                  //     "Login",
                  //     style:
                  //         TextStyle(fontSize: 20,
                  //         fontWeight: FontWeight.bold
                  //         ),
                  //   ),
                  //   style: TextButton.styleFrom(minimumSize: Size(200, 60)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
