import 'package:flutter/material.dart';
import 'package:news/Navigation_Drawer.dart';
import 'package:news/home_Tab/favorited.dart';
import 'package:news/home_Tab/popular.dart';
import 'package:news/home_Tab/whats_new.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text(
          'HeadLine News',
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
