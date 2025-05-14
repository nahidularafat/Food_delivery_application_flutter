import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: Theme.of(context).colorScheme.primary,
      labelColor: Theme.of(context).colorScheme.primary,
      unselectedLabelColor: Theme.of(context).colorScheme.secondary,
      tabs: const [
        Tab(
          icon: Icon(Icons.home), // ✅ ঠিক করা হয়েছে
        ),
        Tab(
          icon: Icon(Icons.person),
        ),
        Tab(
          icon: Icon(Icons.settings),
        ),



      ],
    );
  }
}
