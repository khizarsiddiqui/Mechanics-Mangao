import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });

}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/mobiloil.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Mobile Oil",
    price: 2500,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/steering.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Steering Wheel ",
    price: 8500,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/sparkplug.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Spark Plug",
    price: 900,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
Product(
id: 4,
images: [
"assets/images/sparkplug.png",
],
colors: [
Color(0xFFF6625E),
Color(0xFF836DB8),
Color(0xFFDECB9C),
Colors.white,
],
title: "Spark Plug",
price: 900,
description: description,
rating: 4.1,
isFavourite: true,
isPopular: true,
),
  Product(
      id: 5,
      images: [
      "assets/images/steering.png",
      ],
      colors: [
      Color(0xFFF6625E),
  Color(0xFF836DB8),
  Color(0xFFDECB9C),
  Colors.white,
],
    title: "Steering Wheel ",
price: 8500,
description: description,
rating: 4.1,
isFavourite: true,
isPopular: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/catalytic.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Catalytic Converter",
    price: 8500,
    description: description2,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  )];

const String description =
    "Mobil 1™ motor oils are advanced full synthetic motor oils designed to keep your engine running like new ... by providing exceptional wear protection, cleaning power and overall performance…";
const String description2 =
   "MagnaFlow universal catalytic converters form the basic building blocks for a comprehensive line of direct-fit applications."
    "The main benefit of the universal catalytic converter is that one unit may cover a wide variety of vehicle makes and models.";