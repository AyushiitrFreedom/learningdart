import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/Screens/home/loggedin.dart';
import 'package:learningdart/Screens/authenticate/login_page.dart';
import 'package:learningdart/Screens/authenticate/sign_up.dart';
import 'package:learningdart/Screens/wrapper.dart';
import 'package:learningdart/Services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      initialData: null,
      value: AuthService().user,
      child: MaterialApp(
        // home: LoginPage(),
        routes: <String, WidgetBuilder>{
          '/': (context) => Wrapper(),
          '/signup': (context) => SignUp(),
          '/loggedin': (context) => LoggedIn(),
        },
      ),
    );
  }
}
