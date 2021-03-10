import 'package:flutter/material.dart';
import 'package:news/Navigation_Drawer.dart';
import 'package:news/home_Tab/favorited.dart';
import 'package:news/home_Tab/popular.dart';
import 'package:news/home_Tab/whats_new.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

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
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          'Explore',
        ),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: 'WHATS NEW',
            ),
            Tab(
              text: 'POPULER',
            ),
            Tab(
              text: 'FAVORITED',
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          WhatsNew(),
          Popular(),
          Favorited(),
        ],
        controller: _tabController,
      ),
    );
  }
}
