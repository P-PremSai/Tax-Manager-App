import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        // backgroundColor: Colors.blueAccent,
        // title: Text('Home'),

        //elevation: 0,
        );
  }
}
