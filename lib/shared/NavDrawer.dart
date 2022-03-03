import 'package:TAX_MANAGER/screens/OldRegime/Oldhome.dart';
import 'package:TAX_MANAGER/screens/authenticate/login.dart';
import 'package:TAX_MANAGER/screens/tax_saving_pages/Section_main.dart';
import 'package:TAX_MANAGER/services/auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:TAX_MANAGER/screens/home/body.dart';

class NavDrawer extends StatefulWidget {
  //const NavDrawer({ Key? key }) : super(key: key);

  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      child: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    accountName: Text("Nikhil S N"),
                    accountEmail: Text("nikhilsn.cs19@bmsce.ac.in"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: null,
                    ),
                  )),
              ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Body()),
                  );
                },
              ),
              // ListTile(
              //   leading: Icon(CupertinoIcons.profile_circled),
              //   title: Text(
              //     "Profile",
              //     textScaleFactor: 1.2,
              //   ),
              // ),
              // ListTile(
              //   leading: Icon(CupertinoIcons.share),
              //   title: Text(
              //     "Income",
              //     textScaleFactor: 1.2,
              //   ),
              // ),
              ListTile(
                leading: Icon(CupertinoIcons.collections),
                title: Text(
                  "Deductions",
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Oldhome()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.monetization_on_outlined),
                title: Text(
                  "Tax Saving ideas",
                  textScaleFactor: 1.2,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SavingMain()),
                  );
                },
              ),
              ListTile(
                leading: Icon(CupertinoIcons.collections),
                title: Text(
                  "About us",
                  textScaleFactor: 1.2,
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.share),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.2,
                ),
                onTap: () async {
                  await _auth.signOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login_page()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
