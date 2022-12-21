import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:learningdart/Services/auth.dart';

class LoggedIn extends StatelessWidget {
  LoggedIn({super.key});
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          SizedBox(
            height: 70.0,
          ),
          GestureDetector(
            onTap: () async {
              await _auth.SignOut();
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
                  "Sign out",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
