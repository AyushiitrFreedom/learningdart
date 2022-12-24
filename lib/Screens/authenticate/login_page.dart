import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningdart/Screens/authenticate/sign_up.dart';
import 'package:learningdart/Services/auth.dart';

import '../../shared/loading.dart';

bool loading = false;

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final AuthService _auth = AuthService();
  var email, password;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                  height: 40.0,
                ),
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 300.0,
                          child: TextFormField(
                            validator: (value) =>
                                value!.isEmpty ? "enter an email" : null,
                            onChanged: (value) {
                              email = value;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 300.0,
                          child: TextFormField(
                            validator: (value) => value!.length < 6
                                ? "password length should be more than 6"
                                : null,
                            onChanged: (value) {
                              password = value;
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              hintText: 'Password',
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 70.0,
                ),
                new GestureDetector(
                  onTap: () async {
                    if (_formkey.currentState!.validate()) {
                      loading = true;
                      dynamic result = await _auth.loginWithEmailAndPassword(
                          email, password);
                      if (result == null) {
                        loading = false;
                        print("registration error");
                      }
                    }
                  },
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image:
                              AssetImage("images/firebase_img/img/signup.png"),
                          fit: BoxFit.cover),
                    ),
                    child: Center(
                      child: Text(
                        "log in",
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
                      onTap: () => {Navigator.pushNamed(context, '/signup')},
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
                SizedBox(
                  height: 20,
                ),
                new GestureDetector(
                  onTap: (() async {
                    dynamic result = await _auth.signInAnon();
                    if (result == null) {
                      print("error");
                    } else {
                      print("signed in");
                      print(result.uid);
                    }
                  }),
                  child: Text(
                    "Anonymus login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
