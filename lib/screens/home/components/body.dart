import 'package:flutter/material.dart';
//import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/Details.dart';

import 'MyExpandableCardviewFlutter.dart';

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
                            Icon(
                              Icons.house_sharp,
                              size: 50,
                              color: Colors.redAccent,
                            ),
                            Text(
                              "Home Loan",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 20),
                            ),
                            Text(''),
                            Text(
                              "Deduction upto",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              " ₹2 lakh",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                            Icon(
                              Icons.payment,
                              size: 50,
                              color: Colors.redAccent,
                            ),
                            Text(
                              "Donation 80G",
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 20),
                            ),
                            Text(''),
                            Text(
                              "100% Deduction",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            Text(
                              "on donations",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
          // body: new Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          //       child: Text(
          //         "                                                                                                                                       ",
          //         style: Theme.of(context)
          //             .textTheme
          //             .headline5
          //             .copyWith(fontWeight: FontWeight.bold),
          //       ),
          //     ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          //     child: GridView.builder(
          //         itemCount: 2,
          //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 2,
          //           mainAxisSpacing: kDefaultPaddin,
          //           crossAxisSpacing: kDefaultPaddin,
          //           childAspectRatio: 0.75,
          //         ),
          //         itemBuilder: (context, index) => ItemCard(
          //               product: products[index],
          //               press: () => Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => Details(
          //                       product: products[index],
          //                     ),
          //                   )),
          //             )),
          //   ),
          // ),
          // Expanded(
          //   child: Container(
          //     height: 50.0,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //     child: ExpansionTile(
          //       title: Text("Harley-Davidson"),
          //       subtitle: Text("  Explore the world of H-D"),
          //       children: <Widget>[
          //         IconTheme(
          //           data: IconThemeData(
          //             color: Colors.amber,
          //             size: 32,
          //           ),
          //           child: Text(
          //             // products is out demo list
          //             "Hi this is prem sai",
          //             style: Theme.of(context)
          //                 .textTheme
          //                 .headline5
          //                 .copyWith(fontWeight: FontWeight.bold, fontSize: 30),
          //           ),
          //         ),
          //         Text("This image has 3 star rating ")
          //       ],
          //     ),
          //   ),
          // ),

          Expanded(
            child: SingleChildScrollView(child: MyExpanableCardViewFlutter()),
          ),
        ],
      ),
    );
  }
}
