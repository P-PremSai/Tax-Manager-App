import 'dart:ui';

import 'package:flutter/material.dart';

class nps extends StatefulWidget {
  //const nps({Key? key}) : super(key: key);

  @override
  _npsState createState() => _npsState();
}

class _npsState extends State<nps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NPS 80CCD(1B)'),
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
                    "Which Type of Interest Income are Allowed as Deduction Under Section NPS",
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
                    "* 10% of salary (in case taxpayer is employee.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* 20& of gross total income (in case of self employed.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "* Additional deduction of Rs 50,000 is allowed for amount deposited to NPS account.",
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
                    //        child: Text("Interest Income Not Allowed as Deduction Under Section 80TTA",
                    //          style: TextStyle(
                    //            fontSize: 25,
                    //           fontWeight: FontWeight.bold,
                    //        ),),
                    //    ),
                    //    Container(child: Text(""),),
                    //    Container(
                    //     child: Text("* Interest from fixed deposits.",
                    //     style: TextStyle(
                    //        fontSize: 20,
                    //     ),),
                    //   ),
                    //    Container(
                    //       child: Text("* Interest from recurring deposits.",
                    //       style: TextStyle(
//fontSize: 20,
//),),
                    //    ),
                    //   Container(
                    //      child: Text("* Any other time deposits.",
                    //     style: TextStyle(
                    //          fontSize: 20,
                    //      ),),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
