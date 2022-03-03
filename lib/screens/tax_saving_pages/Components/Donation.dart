import 'dart:ui';

import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  //const Donation({Key? key}) : super(key: key);

  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donation 80G'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section 80G",
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
                    "* Not every donation qualifies for a 100% deduction. Every assessee must refer to the eligibility of the organization while claiming a deduction.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* he donation varies as per the eligibility criteria. The deduction can be 100% or 50% with or without restriction as per the provisions of section 80G.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Any donation made in kind like clothes, food, medicines, etc do not qualify as a deduction or tax benefit.",
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
                Container(
                  child: Text(
                    "Interest Income Not Allowed as Deduction Under Section 80G",
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
                    "* The organization’s eligibility is the deciding factor for a tax benefit. Further the deduction could be 100% or 50% with or without restrictions.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* The qualifying amount is the amount that is allowed as a deduction against the donation. Every assessee must calculate the qualifying amount carefully to avoid any misrepresentation in the income tax return.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* As per the provisions of section 80G, not every donation qualifies for a 100% deduction. It depends on the eligibility of the organization to which donation is made.",
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
    ;
  }
}
