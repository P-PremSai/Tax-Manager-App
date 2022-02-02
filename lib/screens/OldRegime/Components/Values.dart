import 'package:TAX_MANAGER/models/user.dart';
import 'package:TAX_MANAGER/services/database.dart';
import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';
import 'package:provider/provider.dart';

class Values extends StatefulWidget {
  @override
  _ValuesState createState() => _ValuesState();
}

class _ValuesState extends State<Values> {
  TextEditingController basicController = TextEditingController();
  TextEditingController HRAController = TextEditingController();
  TextEditingController BonusController = TextEditingController();
  TextEditingController otherController = TextEditingController();
  TextEditingController te = TextEditingController();
  TextEditingController tf = TextEditingController();
  TextEditingController tg = TextEditingController();
  TextEditingController th = TextEditingController();
  TextEditingController ti = TextEditingController();
  TextEditingController tj = TextEditingController();
  TextEditingController tk = TextEditingController();
  TextEditingController tl = TextEditingController();
  TextEditingController tm = TextEditingController();
  TextEditingController tn = TextEditingController();
  TextEditingController to = TextEditingController();
  TextEditingController tp = TextEditingController();
  TextEditingController tq = TextEditingController();
  TextEditingController tr = TextEditingController();
  TextEditingController ts = TextEditingController();
  TextEditingController tt = TextEditingController();
  TextEditingController tu = TextEditingController();
  TextEditingController tv = TextEditingController();
  TextEditingController tw = TextEditingController();
  String a = '0';
  String b = '0';
  String c = '0';
  String d = '0';
  String e = '0';
  String f = '0';
  String g = '0';
  String h = '0';
  String i = '0';
  String j = '0';
  String k = '0';
  String l = '0';
  String m = '0';
  String n = '0';
  String o = '0';
  String p = '0';
  String q = '0';
  String r = '0';
  String s = '0';
  String t = '0';
  String u = '0';
  String v = '0';
  String w = '0';
  String sresult = '0';

  @override
  Widget build(BuildContext context) {
    Users user = Provider.of<Users>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemptions and Deductions'),
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
                    'Exemptions and Deductions',
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
                      labelText: 'Standard Deduction',
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
                      labelText: '80C',
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
                      labelText: '80CG',
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
                Padding(
                  padding: EdgeInsets.all(15),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      labelText: 'Professional Tax',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: otherController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      d = value;
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
                      labelText: '80D',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: te,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      e = value;
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
                      labelText: '80DD',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tf,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      f = value;
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
                      labelText: '80DDB',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tg,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      g = value;
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
                      labelText: 'Section 24(B)',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: th,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      h = value;
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
                      labelText: '80CCD(1B)',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: ti,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      i = value;
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
                      labelText: '80CCD(2)',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tj,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      j = value;
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
                      labelText: '80EEA',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tk,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      k = value;
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
                      labelText: 'Food Coupons',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tl,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      l = value;
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
                      labelText: '80U',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tm,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      m = value;
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
                      labelText: '80EEB',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tn,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      n = value;
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
                      labelText: '80E',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: to,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      o = value;
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
                      labelText: '80G-Eligible Deduction 50%',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tp,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      p = value;
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
                      labelText: '80G-Eligible Deduction 100%',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tq,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      q = value;
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
                      labelText: '80GGA',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tr,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      r = value;
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
                      labelText: '80GGC',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: ts,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      s = value;
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
                      labelText: 'Other Exemptions',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tt,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      t = value;
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
                      labelText: 'Eligible HRA Exemptions',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tu,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      u = value;
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
                      labelText: '80 TTA',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tv,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      v = value;
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
                      labelText: '80 TTB',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      hintText: '0',
                    ),
                    controller: tw,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      w = value;
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
                        .updateUserDataExemptions(a, b, c, d, e, f, g, h, i, j,
                            k, l, m, n, o, p, q, r, s, t, u, v, w);
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
            )),
      ),
    );
  }
}
