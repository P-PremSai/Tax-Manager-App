import 'package:TAX_MANAGER/models/user.dart';
import 'package:TAX_MANAGER/services/database.dart';
import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class MyExpanableCardViewFlutter1 extends StatelessWidget {
  DocumentSnapshot variable;
  MyExpanableCardViewFlutter1(DocumentSnapshot variable1);
  TextEditingController basicController = TextEditingController();
  TextEditingController HRAController = TextEditingController();
  TextEditingController BonusController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  String a = '0';
  String b = '0';
  String c = '0';
  String d = '0';
  String result = '0';
  String sresult = '0';
  var check = 0;
  var check2 = 0.0;

  @override
  Widget build(BuildContext context) {
    Users user = Provider.of<Users>(context);
    MyExpanableCardViewFlutter1(this.variable);
    //final SalaryAndIncome = Provider.of<QuerySnapshot>(context);
    // return StreamBuilder<UserData>(
    //   stream: DatabaseService(uid: user.uid).userData,

    //   // ignore: missing_return
    //   //builder: (context, snapshot) {
    //     //print(user.uid);
    //     //if (snapshot.hasData) {
    //       UserData userData = snapshot.data;

    return Scaffold(
      appBar: AppBar(
        title: Text('Salary'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Form(
              key: formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Salary',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelText: 'Basic+DA',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        //hintText: ' 0',
                      ),
                      controller: basicController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        a = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelText: 'HRA',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        hintText: ' 0',
                      ),
                      controller: HRAController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        b = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelText: 'Bonus,Commission...',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        //hintText: ' 0',
                      ),
                      controller: BonusController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        c = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        labelText: 'Other Allowances',
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                        //hintText: '0',
                      ),
                      controller: otherController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        d = value;
                      },
                    ),
                  ),
                  // ignore: deprecated_member_use
                  RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () async {
                      result = a + b + c + d;
                      check = int.parse(a) +
                          int.parse(b) +
                          int.parse(c) +
                          int.parse(d);
                      user.Totalamount = user.Totalamount + check;
                      //for old tax
                      if (user.Totalamount > 300000) {
                        check2 = user.Totalamount - 300000;
                        print(check2);
                        if (check2 > 200000) {
                          var check3 = check2 - 200000;
                          if (check3 > 50000) {
                            var check4 = check3 - 500000;
                            user.Tax = 0.0;

                            user.Tax =
                                200000 * 0.05 + 500000 * 0.2 + check4 * 0.3;
                          } else {
                            user.Tax = 0.0;
                            user.Tax = 200000 * 0.05 + check3 * 0.2;
                          }
                        } else {
                          user.Tax = 0.0;
                          user.Tax = check2 * 0.05;
                        }
                      }

                      //for new tax
                      if (user.Totalamount > 250000) {
                        check2 = user.Totalamount - 250000;
                        print(check2);
                        if (check2 > 250000) {
                          var check3 = check2 - 250000;
                          if (check3 > 250000) {
                            var check4 = check3 - 250000;
                            if (check4 > 250000) {
                              var check5 = check4 - 250000;
                              if (check5 > 250000) {
                                var check6 = check5 - 250000;
                                if (check6 > 250000) {
                                  var check7 = check6 - 250000;
                                  user.New = 0.0;
                                  user.New = 250000 * 0.05 +
                                      250000 * 0.1 +
                                      250000 * 0.1 +
                                      250000 * 0.15 +
                                      250000 * 0.2 +
                                      250000 * 0.25 +
                                      check7 * 0.3;
                                } else {
                                  user.New = 0.0;
                                  user.New = 250000 * 0.05 +
                                      250000 * 0.1 +
                                      250000 * 0.1 +
                                      250000 * 0.15 +
                                      250000 * 0.2 +
                                      check6 * 0.25;
                                }
                              } else {
                                user.New = 0.0;
                                user.New = 250000 * 0.05 +
                                    250000 * 0.1 +
                                    250000 * 0.1 +
                                    250000 * 0.15 +
                                    check5 * 0.2;
                              }
                            } else {
                              user.New = 0.0;
                              user.New = 250000 * 0.05 +
                                  250000 * 0.1 +
                                  250000 * 0.1 +
                                  check4 * 0.15;
                            }
                          }
                          user.New = 0.0;

                          user.New = 250000 * 0.05 + check3 * 0.1;
                        } else {
                          user.New = 0.0;
                          user.New = check2 * 0.05;
                        }
                      }

                      // print(check);
                      // print(check2);
                      sresult = result.toString();
                      await DatabaseService(uid: user.uid)
                          .updateUserDataSalary(a, b, c, d, sresult);
                      await DatabaseService(uid: user.uid)
                          .updateUserDataOldTax(user.Tax);
                      await DatabaseService(uid: user.uid)
                          .updateUserDataNewTax(user.New);

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Body(),
                        ),
                      );
                    },
                  ),
                  // SizedBox(height: 15),
                  // new Text(
                  //   sresult,
                  //   style: TextStyle(
                  //     color: Colors.red,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    // } else {
    //   print(snapshot.data);
    //   print('No');
    // }
    //},
    //);
  }
}
