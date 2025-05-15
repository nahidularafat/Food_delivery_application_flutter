import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_current_location.dart';
import 'package:fooddeliveryapp/components/my_description_box.dart';
import 'package:fooddeliveryapp/components/my_drawer.dart';
import 'package:fooddeliveryapp/components/my_sliver_app_bar.dart';
import 'package:fooddeliveryapp/components/my_tab_bar.dart';
import 'package:fooddeliveryapp/models/food.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // TabController

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
_tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose(); // শুধুমাত্র একবার থাকা উচিত
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder:
            (context, innerBoxIsScrolled) => [
              MySliverAppBar(
                title: MyTabBar(tabController: _tabController),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Divider(
                      indent: 25,
                      endIndent: 25,
                      color: Theme.of(context).colorScheme.secondary,
                    ), // Divider
                    // my current location
                    const MyCurrentLocation(),
                    // description box
                    const MyDescriptionBox(),
                  ],
                ),
              ), // MySliverAppBar
            ],
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("hello")),
            Center(child: Text("f")),
            Center(child: Text("k")),
          ],
        ),
      ), // NestedScrollView
    ); // Scaffold
  }
}
