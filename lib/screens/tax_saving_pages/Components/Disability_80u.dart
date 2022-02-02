import 'dart:ui';

import 'package:flutter/material.dart';

class disability_80u extends StatefulWidget {
  //const disability_80u({Key? key}) : super(key: key);

  @override
  _disability_80uState createState() => _disability_80uState();
}

class _disability_80uState extends State<disability_80u> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disability 80U'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "Which Type of Interest Income are Allowed as Deduction Under Section 80U",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(""),
                ),
                Container(
                  child: Text(
                    "* A deduction of Rs. 75,000 is allowed for people with disabilities, and Rs. 1,25,000 deduction for people with severe disability.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* An individual who has a prescribed disability with 40% disability or 80% disability can claim deduction under section 80U of the Income Tax Act.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* There isn’t any documentation requirement apart from the certificate certifying the disability from a recognized medical authority in Form 10-IA. There’s no need of producing bills for the cost incurred for the pursuance of treatment or such other expenses.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(""),
                ),
                Container(
                  child: Text(""),
                ),
                Container(
                  child: Text(""),
                ),
                Container(
                  child: Text(""),
                ),
                // Container(
                // child: Text(
                // "Interest Income Not Allowed as Deduction Under Section 80U",
                //style: TextStyle(
                // fontSize: 25,
                //fontWeight: FontWeight.bold,
                //),
                //),
                //),
                //Container(
                // child: Text(""),
                //),
                //Container(
                //  child: Text(
                //  "* .",
                //style: TextStyle(
                // fontSize: 20,
                //),
                //),
                //),
                // Container(
                // child: Text(
                //  "* .",
                //style: TextStyle(
                // fontSize: 20,
                // ),
                //),
                //),
                //Container(
                //child: Text(
                // "* .",
                //style: TextStyle(
                // fontSize: 20,
                //),
                //),
                //  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
