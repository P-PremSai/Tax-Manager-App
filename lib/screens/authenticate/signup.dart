// import 'dart:html';

import 'package:TAX_MANAGER/screens/home/body.dart';
import 'package:TAX_MANAGER/screens/home/home_screen.dart';
import 'package:TAX_MANAGER/services/auth.dart';
import 'package:TAX_MANAGER/shared/loading.dart';
import 'package:flutter/material.dart';

class signup_form extends StatefulWidget {
  //const signup_form({Key? key}) : super(key: key);

  @override
  _signup_formState createState() => _signup_formState();
}

class _signup_formState extends State<signup_form> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();
  final FirstNameEditingController = new TextEditingController();
  final SeconNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  String error = '';
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: FirstNameEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        FirstNameEditingController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) => val.isEmpty ? 'Enter the First Name' : null,
    );
    final secondNameField = TextFormField(
      autofocus: false,
      controller: SeconNameEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        SeconNameEditingController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Second Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) => val.isEmpty ? 'Enter the Second Name' : null,
    );
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailEditingController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) => val.isEmpty ? 'Enter the Email' : null,
    );
    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        passwordEditingController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) =>
          val.length < 6 ? 'Password Lenght should be minimum 6' : null,
    );
    final confirmPasswordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: confirmPasswordEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        confirmPasswordEditingController.text = value;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "confirm password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) =>
          val.length < 6 ? 'Confirm Password Lenght should be minimum 6' : null,
    );

    final signup_button = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          if (_formkey.currentState.validate()) {
            setState(() => loading = true);
            if (passwordEditingController.text !=
                confirmPasswordEditingController.text) {
              setState(() =>
                  error = 'Password and Confirm Password are not matching');
            } else {
              dynamic result = await _auth.registerWithEmailAndPassword(
                  emailEditingController.text, passwordEditingController.text);
              if (result == null) {
                setState(() {
                  error = 'Please enter the valid email';
                  loading = false;
                });
              } else {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }
            }
          }
        },
        child: Text(
          'Signup',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 150,
                            child: Image.asset(
                              "assets/login.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(
                            height: 60,
                          ),
                          firstNameField,
                          SizedBox(
                            height: 20,
                          ),
                          secondNameField,
                          SizedBox(
                            height: 20,
                          ),
                          emailField,
                          SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          SizedBox(
                            height: 20,
                          ),
                          confirmPasswordField,
                          SizedBox(
                            height: 30,
                          ),
                          signup_button,
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
