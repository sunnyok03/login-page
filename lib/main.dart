import 'dart:developer';

import 'package:flutter/material.dart';
import 'const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primaryColor: const Color(0xff6180F3),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xffF4F6FE),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                sizedBox(),
                const Icon(
                  Icons.flutter_dash,
                  color: Colors.blue,
                  size: 40.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                sizedBox(),
                const Card(),
                sizedBox(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Forgot your Password ?',
                      ),
                      GestureDetector(
                        onTap: () {
                          log("reset button pressed");
                        },
                        child: const Text(
                          "Reset Password",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFFFF),
      ),
      padding: const EdgeInsets.all(30.0),
      alignment: Alignment.center,
      width: 580,
      height: 400,
      child: Column(
        children: <Widget>[
          const Text(
            'Welcome Back',
            style: TextStyle(
              fontSize: 17,
              color: Colors.black45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            'Enter your credential to access your account.',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blue,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                  size: 20,
                ),
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF267FFF),
                padding: const EdgeInsets.only(top: 27, bottom: 27),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {
                log("Sign in button pressed");
              },
              child: const Center(child: Text('Sign in')),
            ),
          )
        ],
      ),
    );
  }
}
