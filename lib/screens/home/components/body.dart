import 'package:flutter/material.dart';
//import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/Details.dart';

import 'MyExpanableCardViewFlutter2.dart';
import 'MyExpanableCardViewFlutter3.dart';
import 'MyExpanableCardViewFlutter4.dart';
import 'MyExpandableCardviewFlutter1.dart';

//import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      // appBar: AppBar(
      //   title: Text('Tax Saving Guide '),
      // ),
      body: new Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                child: GridView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                              product: products[1],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Old",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 40),
                            ),
                            //Text(''),
                            Text(
                              "Tax",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            Text(
                              " Regime",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                              product: products[1],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "New",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 40),
                            ),
                            //Text(''),
                            Text(
                              "Tax",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                            Text(
                              "Regime",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Text(
                  "   Salary and Income   ",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyExpanableCardViewFlutter1()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / (1.04),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Salary",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                              //Text(''),
                              Text(
                                "Salary,Bonus,Allowances........",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyExpanableCardViewFlutter2()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / (1.04),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Business and Profession",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                              //Text(''),
                              Text(
                                "Taxable income from Business and Profession",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyExpanableCardViewFlutter3()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / (1.04),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Capital Gains",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                              //Text(''),
                              Text(
                                "Income from Capital Gains",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(5.0),
            child: Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MyExpanableCardViewFlutter4()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / (1.04),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Other Sources",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                              //Text(''),
                              Text(
                                "Income from Other Sources",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(5.0),
          //   child: Expanded(
          //     child:
          //         SingleChildScrollView(child: MyExpanableCardViewFlutter3()),
          //   ),
          // ),
          // Padding(
          //   padding: EdgeInsets.all(5.0),
          //   child: Expanded(
          //     child:
          //         SingleChildScrollView(child: MyExpanableCardViewFlutter4()),
          //   ),
          // ),
        ],
      ),
    );
  }
}
