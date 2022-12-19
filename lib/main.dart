import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:learningdart/loggedin.dart';
import 'package:learningdart/login_page.dart';
import 'package:custom_gradient_button/custom_gradient_button.dart';
import 'package:learningdart/sign_up.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/' :(context) => LoginPage(),
        '/signup':(context) => SignUp(),
        '/loggedin':(context) => LoggedIn(),
      },
    );
  }
}


