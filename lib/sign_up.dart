import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage("images/firebase_img/img/loginimg.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Text("signup"),
        ],
      ),
    );
  }
}
