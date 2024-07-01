
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:villa/models/food.dart';

// class MyTabBar extends StatelessWidget {
//   final TabController tabController;

//   const MyTabBar({Key? key, required this.tabController}) : super(key: key);

//   List<Tab> _buildCategoryTabs() {
//     return FoodCategory.values.map((category) {
//       return Tab(
//         text: describeEnum(category),
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TabBar(
//         controller: tabController, // Use the passed tabController
//         tabs: _buildCategoryTabs(),
//       ),
//     );
//   }
// }


import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:villa/models/food.dart';


// class MyTabBar extends StatelessWidget {
//   final TabController tabController;

//   const MyTabBar({Key? key, required this.tabController}) : super(key: key);

//   List<Tab> _buildCategoryTabs() {
//     return FoodCategory.values.map((category) {
//       return Tab(
//         text: category.toString().split('.').last
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       controller: tabController,
//       tabs: _buildCategoryTabs(),
//     );
//   }
// }
class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({Key? key, required this.tabController}) : super(key: key);

  List<Tab> buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split('.').last
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: buildCategoryTabs(),
    );
  }
}