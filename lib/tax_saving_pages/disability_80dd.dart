import 'dart:ui';

import 'package:flutter/material.dart';

class disability_80dd extends StatefulWidget {
  //const disability_80dd({Key? key}) : super(key: key);

  @override
  _disability_80ddState createState() => _disability_80ddState();
}

class _disability_80ddState extends State<disability_80dd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disability 80DD'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section 80DD",
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
                    "* In this clause,the taxpayer can claim a deduction of RS.75000 0r 125000.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* The taxpayer can claim the amount only for his/her dependant who is a person with a disability.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Rs.75000 can be claimed if the disability of the dependent is more than 40% but less than 80%.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* In the case where the disability is more than 80%,an amount of Rs.125000 can be claimed for deduction.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* For claiming a deduction under this section need to furnish a copy of the certificate issued by the medical authority.",
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
                  child: Text(
                    "Interest Income Not Allowed as Deduction Under Section 80DD",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* The taxpayer is not allowed this deduction if the dependant has claimed a deduction under section 80U for himself/herself.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Disability of the dependant is not less than 40%.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Deduction is allowed for a dependant of the taxpayer and not the taxpayer himself.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Disability is defined under section 2(i) of the Persons of Disabilities Act, 1995.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
