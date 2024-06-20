import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_appbar.dart';
import 'package:fooddelieveryapp/components/my_current_location.dart';
import 'package:fooddelieveryapp/components/my_description.dart';
import 'package:fooddelieveryapp/components/my_drawer.dart';
import 'package:fooddelieveryapp/components/my_food_tile.dart';
import 'package:fooddelieveryapp/components/my_tab_bar.dart';
import 'package:fooddelieveryapp/model/food.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class HomScreen extends StatefulWidget {
  const HomScreen({super.key});

  @override
  State<HomScreen> createState() => _HomScreenState();
}

class _HomScreenState extends State<HomScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenyByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenyByCategory(category, fullMenu);
      return ListView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categoryMenu.length,
        itemBuilder: (context, index) {
          return MyFoodTile(food: categoryMenu[index], onTap: (){});
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
                MyAppBar(
                  title: MyTabBar(tabController: _tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const MyCurrentLocation(),
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Consumer<Restaurant>(
            builder: (context, restaurant, child) {
              return TabBarView(
                controller: _tabController,
                children: getFoodInThisCategory(restaurant.menu),
              );
            },
          )),
    );
  }
}
