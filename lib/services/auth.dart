import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_appi/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  FbUser? _userFromFirebase(User? user) {
    return user != null ? FbUser(uid: user.uid) : null;
  }

  Stream<FbUser?> get user {
    return _auth
        .authStateChanges()
        .map((User? user) => _userFromFirebase(user));
  }

  Future<FbUser?> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
