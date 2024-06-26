import 'package:flutter/material.dart';
import 'package:food_delivery_app_with_backend/components/my_current_location.dart';
import 'package:food_delivery_app_with_backend/components/my_description_box.dart';
import 'package:food_delivery_app_with_backend/components/my_drawer.dart';
import 'package:food_delivery_app_with_backend/components/my_food_tile.dart';
import 'package:food_delivery_app_with_backend/components/my_sliver_app_bar.dart';
import 'package:food_delivery_app_with_backend/components/my_tab_bar.dart';
import 'package:food_delivery_app_with_backend/models/food.dart';
import 'package:food_delivery_app_with_backend/models/restaurant.dart';
import 'package:food_delivery_app_with_backend/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  // sort out a list of food items that belongs to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          // get indivudual food

          final food = categoryMenu[index];
          // return food tile ui
          return MyFoodTile(
            food: food,
            ontap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(food: food),
                )),
          );
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
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  // my current location
                  MyCurrentLocation(),

                  // description box
                  MyDescriptionBox(),

                  //column
                ],
              ),
            ),
          ],
          body: Consumer<Restaurant>(
              builder: (context, restaurant, child) => TabBarView(
                    controller: _tabController,
                    children: getFoodInThisCategory(restaurant.menu),
                  )),
        ));
  }
}
