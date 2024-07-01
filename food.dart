// class Food{
//   final String name;
//   final String description;
//   final String imagePath;
//   final double price;
//   final FoodCategory category;
//   List<Addon> availableAddons;


//   Food( {
//     required this.name,
//     required this.description,
//     required this.imagePath,
//   required this.price, required this.category,
//   required this.availableAddons,

//   });
// }

// enum FoodCategory{
// BURGERS,
// salads,
// sides,
// drinks,
// desserts,
// }

// class Addon{
//   String name;
//   double price;

//   Addon({
//     required this.name,
//     required this.price,
//   });
// }

// import 'package:flutter/material.dart';

// class Food {
//   final String name;
//   final String description;
//   // final ImageProvider<Object> imagePath;
//   //  final String imagePath;
//   final double price;
//   // ignore: empty_constructor_bodies
//   // Image.network(this.name, this.description, this.price, this.category, this.availableAddons),
//   final FoodCategory category;
//   final List<Addon> availableAddons;

//   Food({
//      required this.name,
//     required this.description,
//     // required this.imagePath,
//     required this.price,
//     required this.category,
//     required this.availableAddons, required String imagePath,
//   });
// }

// enum FoodCategory {
 
//   BURGERS,
//   SALADS,
//   SIDES,
//   DRINKS,
//   DESSERTS,
// }

// class Addon {
//   final String name;
//   final double price;

//   Addon({
//     required this.name,
//     required this.price,
//   });
// }

import 'package:flutter/material.dart';

class Food {
   final String name;
  // final String description;
   final String imagePath;
  final double price;
  final FoodCategory category;
  final List<Addon> availableAddons;

  Food({
     required this.name,
    // required this.description,
     required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  BURGERS,
  SALADS,
  SIDES,
  DRINKS,
  DESSERTS,
}

class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}
