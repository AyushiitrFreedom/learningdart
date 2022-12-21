import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/Screens/authenticate/login_page.dart';
import 'package:learningdart/Screens/authenticate/sign_up.dart';
import 'package:learningdart/Screens/home/loggedin.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // retuen either loggedin or signup widget
    final user = Provider.of<User?>(context);
    if (user == null) {
      return LoginPage();
    } else {
      return LoggedIn();
    }
  }
}
