// lib/globals.dart
import 'package:flutter/material.dart';

import '../models/product.dart'; // Update with your actual path

// List of Category Images
final List<String> imgList = [
  'assets/images/img_7.png',
  'assets/images/img_9.png',
  'assets/images/img_3.png',
  'assets/images/img_4.png',
  'assets/images/img_5.png',
  'assets/images/img_6.png',
];

// Category List
List<Map<String, dynamic>> categoryList = [
  {'cat': 'Mobiles', 'icon': Icons.phone_android},
  {'cat': 'Pantry', 'icon': Icons.kitchen},
  {'cat': 'Fashion', 'icon': Icons.style},
  {'cat': 'Electronics', 'icon': Icons.electrical_services},
];

// List of Products
final List<Product> productList = [
  Product(
    imageUrl: imgList[0],
    color: Colors.brown,
    price: 99.99,
    name: 'Product 1',
    smallDesc: 'Description of Product 1',
    mrp: 129.99,
    rate: 4.5,
  ),
  Product(
    imageUrl: imgList[1],
    color: Colors.lightBlue,
    price: 79.99,
    name: 'Product 2',
    smallDesc: 'Description of Product 2',
    mrp: 99.99,
    rate: 4.2,
  ),
  Product(
    imageUrl: imgList[2],
    color: Colors.pinkAccent,
    price: 49.99,
    name: 'Product 3',
    smallDesc: 'Description of Product 3',
    mrp: 59.99,
    rate: 4.0,
  ),
  Product(
    imageUrl: imgList[3],
    color: Colors.redAccent,
    price: 149.99,
    name: 'Product 4',
    smallDesc: 'Description of Product 4',
    mrp: 199.99,
    rate: 4.8,
  ),
  Product(
    imageUrl: imgList[4],
    color: Colors.blue,
    price: 39.99,
    name: 'Product 5',
    smallDesc: 'Description of Product 5',
    mrp: 49.99,
    rate: 4.1,
  ),
  Product(
    imageUrl: imgList[5],
    color: Colors.purpleAccent,
    price: 89.99,
    name: 'Product 6',
    smallDesc: 'Description of Product 6',
    mrp: 109.99,
    rate: 4.3,
  ),
];
