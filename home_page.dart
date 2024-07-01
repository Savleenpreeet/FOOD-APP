
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:villa/components/my_current_location.dart';
import 'package:villa/components/my_description_box.dart';
import 'package:villa/components/my_drawer.dart';
import 'package:villa/components/my_food_tile.dart';
import 'package:villa/components/my_sliver_app_bar.dart';
import 'package:villa/components/my_tab_bar.dart';
import 'package:villa/models/food.dart';
import 'package:villa/models/restaurant.dart';
import 'package:villa/pages/food_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          final food = categoryMenu[index];
          return FoodTile(food: food,onTap: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) =>
              FoodPage(food: food),
              ),
              );
          },);
          //  ListTile(
          //   title: Text(categoryMenu[index].name),
          // );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(indent: 25, endIndent: 25),
                MyCurrentLocation(),
                MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) =>
              TabBarView(
                controller: tabController,
                children: getFoodInThisCategory(restaurant.menu),
              ),
        ),
      ),
    );
  }
}

          // [
          //   ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => ListTile(title: Text('hlo1')),
          //   ),
          //   ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => ListTile(title: Text('hlo2')),
          //   ),
          //   ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => ListTile(title: Text('hlo3')),
          //   ),
          //   ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => ListTile(title: Text('hlo4')),
          //   ),
          //   ListView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) => ListTile(title: Text('hlo5')),
          //   ),
          // ],
//         ),
//       ),
//       ),
//     );
//   }
// }
