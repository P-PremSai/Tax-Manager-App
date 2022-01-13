import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';

class MyExpanableCardViewFlutter2 extends StatefulWidget {
  @override
  _MyExpanableCardViewFlutter2State createState() =>
      _MyExpanableCardViewFlutter2State();
}

class _MyExpanableCardViewFlutter2State
    extends State<MyExpanableCardViewFlutter2> {
  TextEditingController basicController = TextEditingController();
  TextEditingController HRAController = TextEditingController();
  TextEditingController BonusController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  double a = 0;
  double b = 0;
  double result = 0;
  String sresult = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business and Profession'),
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
                    'Business and Profession',
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
                      labelText: 'Business',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: ' 0',
                    ),
                    controller: basicController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final x = double.tryParse(value);
                      setState(() {
                        a = x ?? 0;
                      });
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
                      labelText: 'Profession',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: ' 0',
                    ),
                    controller: HRAController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final x = double.tryParse(value);
                      setState(() {
                        b = x ?? 0;
                      });
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Body(),
                      ),
                    );
                    setState(() {
                      result = a + b;
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
