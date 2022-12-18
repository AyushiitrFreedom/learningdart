import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningdart/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/firebase_img/img/loginimg.png"),
          Text(
            "Hello",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50.0),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            "Sign into your account",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 163, 162, 162),
              fontSize: 20.0,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(
            height: 70.0,
          ),
          const SizedBox(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 300.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          new GestureDetector(
            onTap: () => {
              Navigator.pushNamed(context, '/loggedin')
            },
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage("images/firebase_img/img/signup.png"),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "don't have a account? ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 163, 162, 162),
                  fontSize: 15.0,
                  letterSpacing: 1.5,
                ),
              ),
              new GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context, '/signup')
                },
                child: Text(
                  "Create",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
