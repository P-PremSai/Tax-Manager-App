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
                      sresult = result.toString();
                      await DatabaseService(uid: user.uid)
                          .updateUserDataSalary(a, b, c, d, sresult);
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
