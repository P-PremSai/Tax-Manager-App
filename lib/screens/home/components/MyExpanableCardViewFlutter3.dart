import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/components/body.dart';

class MyExpanableCardViewFlutter3 extends StatefulWidget {
  @override
  _MyExpanableCardViewFlutter3State createState() =>
      _MyExpanableCardViewFlutter3State();
}

class _MyExpanableCardViewFlutter3State
    extends State<MyExpanableCardViewFlutter3> {
  TextEditingController basicController = TextEditingController();
  TextEditingController HRAController = TextEditingController();
  TextEditingController BonusController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  double a = 0;
  double b = 0;
  double c = 0;
  double d = 0;
  double result = 0;
  String sresult = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capital Gains'),
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
                    'Capital Gains',
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
                      labelText:
                          'Short Term Capital Gain-Taxable at Normal Rates',
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
                      labelText: 'Short Term Capital Gain - Taxable @15%',
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
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      labelText: 'Long Term Capital Gain - Taxable @10%',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: ' 0',
                    ),
                    controller: BonusController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final x = double.tryParse(value);
                      setState(() {
                        c = x ?? 0;
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
                      labelText: 'Long Term Capital Gain - Taxable @20%',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: otherController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      final x = double.tryParse(value);
                      setState(() {
                        d = x ?? 0;
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
                      result = a + b + c + d;
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
