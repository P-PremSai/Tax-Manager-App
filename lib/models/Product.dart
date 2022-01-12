import 'package:flutter/material.dart';

class Product {
  final String title;
  final int id;
  final Color color;
  Product({
    this.id,
    this.title,
    this.color,
  });
}

List<Product> products = [
  Product(id: 1, title: "Old     Tax     Regime ", color: Color(0xFFE6B398)),
  Product(id: 2, title: "New Tax Regime ", color: Color(0xFFE6B398)),
  Product(id: 3, title: "Hang Top", color: Color(0xFF989493)),
  Product(id: 4, title: "Old Fashion", color: Color(0xFFE6B398)),
  Product(id: 5, title: "Office Code", color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    color: Color(0xFFAEAEAE),
  ),
];
