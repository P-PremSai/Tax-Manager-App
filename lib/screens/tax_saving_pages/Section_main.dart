import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/shared/NavDrawer.dart';
import 'Components/intrest_80TTA.dart';
import 'Components/home_loan.dart';
import 'Components/Donation.dart';
import 'Components/Savings.dart';
import 'Components/nps.dart';
import 'Components/edu_loan.dart';
import 'Components/insurance.dart';
import 'Components/intrest_80ttb.dart';
import 'Components/Disability_80u.dart';
import 'Components/disability_80dd.dart';

class SavingMain extends StatelessWidget {
  //const SavingMain({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Tax Saving Guide '),
        ),
        drawer: NavDrawer(),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: GridView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeLoan()),
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
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹2 lakh",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Donation()),
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
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "100% Deduction",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          "on donations",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Savings()),
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
                          Icons.payments,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Savings 80C",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹1.5 lakh",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nps()),
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
                          Icons.account_balance,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "NPS 80CCD(1B)",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹50000",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => edu_loan()),
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
                          Icons.chrome_reader_mode,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Edu Loan 80E",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Total interst",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " on loan",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => insurance()),
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
                          Icons.health_and_safety,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Insurance 80D",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹1 lakh",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => int80tta()),
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
                          Icons.monetization_on_outlined,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Interst 80TTA",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹10000",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => intrest_80ttb()),
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
                          Icons.monetization_on_outlined,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Intrest 80TTB",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction upto",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹50000",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => disability_80u()),
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
                          Icons.accessible_forward_outlined,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Disability 80U",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction of",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹.75/1.25 lakh",
                          style: TextStyle(color: Colors.black, fontSize: 15),
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
                          builder: (context) => disability_80dd()),
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
                          Icons.accessible,
                          size: 50,
                          color: Colors.redAccent,
                        ),
                        Text(
                          "Disability 80DD",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        Text(''),
                        Text(
                          "Deduction of",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(
                          " ₹.75/1.25 lakh",
                          style: TextStyle(color: Colors.black, fontSize: 15),
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
    );
  }
}
