import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_appbar.dart';
import 'package:fooddelieveryapp/components/my_current_location.dart';
import 'package:fooddelieveryapp/components/my_description.dart';
import 'package:fooddelieveryapp/components/my_drawer.dart';
import 'package:fooddelieveryapp/components/my_tab_bar.dart';

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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
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
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("First Tab");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("Second Tab");
              },
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Text("Third Tab");
              },
            ),
          ],
        ),
      ),
    );
  }
}
