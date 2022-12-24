import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningdart/Services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../shared/loading.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final AuthService _auth = AuthService();
  var email, password;
  bool loading = false;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("images/firebase_img/img/signup.png"),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 130,
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundImage:
                            AssetImage("images/firebase_img/img/profile1.png"),
                        backgroundColor: Color.fromARGB(255, 239, 237, 237),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 70.0,
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
                      dynamic result = await _auth.registerWithEmailAndPassword(
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
                        "Sign up",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                new GestureDetector(
                  onTap: () => {Navigator.pushNamed(context, '/loginpage')},
                  child: Text(
                    "login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "sign up using on the following method",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 163, 162, 162),
                    fontSize: 15.0,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("images/firebase_img/img/f.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("images/firebase_img/img/g.png"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage("images/firebase_img/img/t.png"),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
