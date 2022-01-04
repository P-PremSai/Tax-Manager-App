import 'package:flutter/material.dart';

class MyExpanableCardViewFlutter extends StatefulWidget {
  @override
  _MyExpanableCardViewFlutterState createState() =>
      _MyExpanableCardViewFlutterState();
}

class _MyExpanableCardViewFlutterState
    extends State<MyExpanableCardViewFlutter> {
  //controller for TextField
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ExpansionTile(
            title: Text("Harley-Davidson"),
            subtitle: Text("  Explore the world of H-D"),
            children: <Widget>[Text("This image has 3 star rating ")],
          ),
          ExpansionTile(
            title: Text("Harley-Davidson"),
            subtitle: Text("  Explore the world of H-D"),
            children: <Widget>[
              Text("Hi This is P Prem Sai"),
              Text("This image has 3 star rating ")
            ],
          ),
          ExpansionTile(
            title: Text("Harley-Davidson"),
            subtitle: Text("  Explore the world of H-D"),
            children: <Widget>[
              Text("Hi This is P Prem Sai"),
              Text("This image has 3 star rating ")
            ],
          ),
          ExpansionTile(
            title: Text("Harley-Davidson"),
            subtitle: Text("  Explore the world of H-D"),
            children: <Widget>[
              Text("Hi This is P Prem Sai"),
              Text("This image has 3 star rating ")
            ],
          ),
        ],
      ),
    ));
  }
}

// class StarDisplay extends StatelessWidget {
//   final int value;
//   const StarDisplay({Key key, this.value = 0})
//       : assert(value != null),
//         super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(5, (index) {
//         return Icon(
//           index < value ? Icons.star : Icons.star_border,
//         );
//       }),
//     );
//   }
// }
