import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  var email, password;

  final _formkey = GlobalKey<FormState>();
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
            onTap: () => {Navigator.pushNamed(context, '/loggedin')},
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
            height: 30.0,
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
                  backgroundImage: AssetImage("images/firebase_img/img/f.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/firebase_img/img/g.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/firebase_img/img/t.png"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
