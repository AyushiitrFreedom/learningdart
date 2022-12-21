import 'package:flutter/material.dart';
import 'package:learningdart/Screens/home/loggedin.dart';
import 'package:learningdart/Screens/authenticate/login_page.dart';
import 'package:learningdart/Screens/authenticate/sign_up.dart';


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


