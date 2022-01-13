import 'package:TAX_MANAGER/screens/authenticate/login.dart';
import 'package:TAX_MANAGER/screens/authenticate/signup.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  //const Authenticate({ Key? key }) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return Login_page();
    } else {
      return signup_form();
    }
  }
}
