import 'package:TAX_MANAGER/screens/OldRegime/Components/Values.dart';
import 'package:TAX_MANAGER/screens/tax_saving_pages/Section_main.dart';
import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/shared/NavDrawer.dart';

//import 'item_card.dart';
class Oldhome extends StatefulWidget {
  @override
  _OldhomeState createState() => _OldhomeState();
}

class _OldhomeState extends State<Oldhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.brown[100],
      appBar: AppBar(
        title: Text('Old Regime '),
      ),
      drawer: NavDrawer(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100, 50, 100, 50),
                  child: GridView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SavingMain()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Saving",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 40),
                              ),
                              //Text(''),
                              Text(
                                "Ideas",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
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
                    "   Deductions  ",
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
                              MaterialPageRoute(builder: (context) => Values()),
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
                                  "Enter Deductions",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                                //Text(''),
                                Text(
                                  "Standard Deduction,Professional Tax..........",
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
      ),
    );
  }
}
