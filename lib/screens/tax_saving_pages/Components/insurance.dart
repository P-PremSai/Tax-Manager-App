import 'dart:ui';

import 'package:flutter/material.dart';

class insurance extends StatefulWidget {
  //const insurance({Key? key}) : super(key: key);

  @override
  _insuranceState createState() => _insuranceState();
}

class _insuranceState extends State<insurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insurance 80D'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section 80D",
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
                    "* You (as an individual or HUF) can claim a deduction of Rs.25,000 under section 80D on insurance for self, spouse and dependent children.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* In case, both taxpayer and parent(s) are 60 years or above, the maximum deduction available under this section is up to Rs.1 lakh.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                // Container(
                //  child: Text(
                //  "* From a savings account with a post office.",
                //    style: TextStyle(
                //     fontSize: 20,
                //    ),
                // ),
                //   ),
//Container(
                //      child: Text(""),
                //  ),
                //   Container(
                //      child: Text(""),
                //   ),
                //  Container(
                //    child: Text(""),
                //   ),
                //  Container(
                //  child: Text(""),
                //  ),
                //  Container(
                //    child: Text(
                //     "Interest Income Not Allowed as Deduction Under Section 80TTA",
                //     style: TextStyle(
                //      fontSize: 25,
                //     fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //    ),
                //   Container(
                //     child: Text(""),
                //  ),
                //    Container(
                //     child: Text(
                //     "* Interest from fixed deposits.",
                //      style: TextStyle(
                //      fontSize: 20,
                //  ),
                //  ),
                //   ),
                //   Container(
                //    child: Text(
                //     "* Interest from recurring deposits.",
                //        style: TextStyle(
//fontSize: 20,
                //       ),
                //       ),
                //       ),
                //   Container(
                //       child: Text(
                //      "* Any other time deposits.",
                //     style: TextStyle(
                //        fontSize: 20,
                //      ),
                //    ),
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
