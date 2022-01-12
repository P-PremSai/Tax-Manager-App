import 'dart:ui';

import 'package:flutter/material.dart';

class edu_loan extends StatefulWidget {
  //const edu_loan({Key? key}) : super(key: key);

  @override
  _edu_loanState createState() => _edu_loanState();
}

class _edu_loanState extends State<edu_loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edu Loan 80E'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section 80E",
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
                    "* Any individual who has applied for a loan for higher education can avail the benefits of tax saving provided by Section 80E of the Income Tax Act, 1961.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* if an individual has availed the maximum available deduction of INR. 1,50,000 under section 80C, they can still avail deduction under Section 80E..",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Deduction can be availed only if the loan is taken to finance higher education.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                //   Container(child: Text(""),),
                //       Container(child: Text(""),),
                //   Container(child: Text(""),),
                //  Container(child: Text(""),),
                //  Container(
                //  child: Text("Interest Income Not Allowed as Deduction Under Section 80TTA",
                //    style: TextStyle(
                //     fontSize: 25,
                //    fontWeight: FontWeight.bold,
                //   ),),
                //  ),
                // Container(child: Text(""),),
                Container(
                    //     child: Text("* Interest from fixed deposits.",
                    //      style: TextStyle(
                    //       fontSize: 20,
                    //     ),),
                    //  ),
                    //   Container(
                    //    child: Text("* Interest from recurring deposits.",
                    //      style: TextStyle(
                    //       fontSize: 20,
                    //    ),),
                    // ),
                    //  Container(
                    //   child: Text("* Any other time deposits.",
                    //    style: TextStyle(
                    //s       fontSize: 20,
                    //     ),),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
