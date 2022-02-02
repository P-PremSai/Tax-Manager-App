import 'dart:ui';

import 'package:flutter/material.dart';

class HomeLoan extends StatefulWidget {
  //const HomeLoan({Key? key}) : super(key: key);

  @override
  _HomeLoanState createState() => _HomeLoanState();
}

class _HomeLoanState extends State<HomeLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Loan'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section Home Loan",
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
                    "* From the assessment year 2018-19 onwards, the maximum deduction for interest paid on self-occupied house property is Rs 2 lakh.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* The interest portion of the EMI paid for the year can be claimed as a deduction from your total income up to a maximum of Rs 2 lakh under Section 24. ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* However, tax benefit of home loan under this section for repayment of principal part of the home loan is allowed only after the construction is complete and the completion certificate has been awarded. No deduction would be allowed under this section for repayment of principal for those years during which the property was under construction.",
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
                //  "Interest Income Not Allowed as Deduction Under Section Home Loan",
                //  style: TextStyle(
                //    fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //     ),
                //      ),
                //     ),
                //  Container(
                //    child: Text(""),
                //   ),
                //    Container(
                //     child: Text(
                //      "* .",
                //     style: TextStyle(
                //      fontSize: 20,
                //     ),
                //    ),
                //   ),
                //   Container(
                //    child: Text(
                //      "* .",
                //     style: TextStyle(
                //      fontSize: 20,
                //      ),
                //     ),
                //    ),
                //  Container(
                //   child: Text(
                //    "* Any other time deposits.",
                //   style: TextStyle(
                //     fontSize: 20,
                //    ),
                //  ),
                //  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
