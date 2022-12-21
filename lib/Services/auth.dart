import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // stream
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  // anonymous login

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return user;
    } catch (e) {
      print(e);
      return null;
    }
  }

  // Signout
  Future SignOut() async{
    try {
      return await _auth.signOut(); 
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}