import 'package:TAX_MANAGER/models/user.dart';
import 'package:TAX_MANAGER/screens/authenticate/authenticate.dart';
import 'package:TAX_MANAGER/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return HomeScreen();
    }
  }
}
