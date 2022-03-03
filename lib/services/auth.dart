import 'package:TAX_MANAGER/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:TAX_MANAGER/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Users _userFromFirebaseUser(User user) {
    return user != null ? Users(uid: user.uid) : null;
  }

  Stream<Users> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

//Anonyomus sigin
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign in with email and password
  Future signinWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      print(user.uid);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user;
      print(user.uid);
      await DatabaseService(uid: user.uid)
          .updateUserDataSalary('0', '0', '0', '0', '0');
      await DatabaseService(uid: user.uid).updateUserDataBusiness('0', '0');

      await DatabaseService(uid: user.uid)
          .updateUserDataCapitalGains('0', '0', '0', '0');

      await DatabaseService(uid: user.uid).updateUserDataOthers('0', '0', '0');

      await DatabaseService(uid: user.uid).updateUserDataExemptions(
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0',
          '0');

      await DatabaseService(uid: user.uid).updateUserDataOldTax(0.0);

      await DatabaseService(uid: user.uid).updateUserDataNewTax(0.0);

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//sign Out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
