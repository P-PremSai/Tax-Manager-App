import 'package:TAX_MANAGER/models/user.dart';
import 'package:TAX_MANAGER/services/database.dart';
import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';
import 'package:provider/provider.dart';

class MyExpanableCardViewFlutter4 extends StatefulWidget {
  @override
  _MyExpanableCardViewFlutter4State createState() =>
      _MyExpanableCardViewFlutter4State();
}

class _MyExpanableCardViewFlutter4State
    extends State<MyExpanableCardViewFlutter4> {
  TextEditingController basicController = TextEditingController();
  TextEditingController HRAController = TextEditingController();
  TextEditingController BonusController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  String a = '0';
  String b = '0';
  String c = '0';
  String result = '0';
  String sresult = '0';

  @override
  Widget build(BuildContext context) {
    Users user = Provider.of<Users>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Sources'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    'Other Sources',
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
                      labelText: 'Interest from Savings Bank Accounts',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: ' 0',
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
                      labelText: 'Interest from Fixed Deposits',
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
                      labelText: 'Others',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: ' 0',
                    ),
                    controller: BonusController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      c = value;
                    },
                  ),
                ),

                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () async {
                    await DatabaseService(uid: user.uid)
                        .updateUserDataOthers(a, b, c);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Body(),
                      ),
                    );
                    setState(() {
                      result = a + b + c;
                      sresult = result.toString();
                    });
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
            )),
      ),
    );
  }
}
