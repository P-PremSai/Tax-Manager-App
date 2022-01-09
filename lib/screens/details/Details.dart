import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class Details extends StatelessWidget {
  final Product product;

  const Details({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product.color,
    );
  }
}
