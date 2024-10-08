// lib/models/product.dart
import 'package:flutter/material.dart';

class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double mrp;
  final double rate;
  final String smallDesc;
  final Color color;
  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.mrp,
    required this.rate,
    required this.smallDesc,
    required this.color,
  });
}
