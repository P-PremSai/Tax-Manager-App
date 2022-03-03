import 'package:TAX_MANAGER/screens/home/home_screen.dart';
import 'package:TAX_MANAGER/services/auth.dart';
import 'package:TAX_MANAGER/shared/loading.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

class Login_page extends StatefulWidget {
  //const Login_page({Key? key}) : super(key: key);

  @override
  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  String error = '';

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailController.text = value;
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
      validator: (val) => val.isEmpty ? 'Enter an Email' : null,
    );

    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      onSaved: (value) {
        passwordController.text = value;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (val) => val.isEmpty ? 'Enter the Password' : null,
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () async {
          if (_formKey.currentState.validate()) {
            setState(() => loading = true);
            dynamic result = await _auth.signinWithEmailAndPassword(
                emailController.text, passwordController.text);
            if (result == null) {
              setState(() {
                error = 'Please enter the correct credentials';
                loading = false;
              });
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
          }
        },
        child: Text(
          'Login',
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
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(35),
                    child: Form(
                      key: _formKey,
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
                          emailField,
                          SizedBox(
                            height: 20,
                          ),
                          passwordField,
                          SizedBox(
                            height: 30,
                          ),
                          loginButton,
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Text("                  Don't have an account?"),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => signup_form()));
                                },
                                child: Text(
                                  "Signup",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                            ],
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
