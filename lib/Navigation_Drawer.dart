import 'package:flutter/material.dart';
import 'package:news/screen/faceBookFeeds.dart';
import 'package:news/screen/headlindeFeeds.dart';
import 'package:news/screen/instagramFeeds.dart';
import 'package:news/screen/twitterFeeds.dart';
import 'package:news/model/nav_meun.dart';
import 'package:news/screen/home_screen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    List<NavMenuItem> navigationMeun = [
      NavMenuItem('Explore', () => HomeScreen()),
      NavMenuItem('HeadLine News ', () => HeadLineNews()),
      NavMenuItem('Twitter Feeds ', () => TwitterFeeds()),
      NavMenuItem('Instagram Feeds ', () => InstagramFeeds()),
      NavMenuItem('FaceBook Feeds ', () => FaceBookFeeds()),
    ];
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 50, top: 50),
        child: ListView.builder(
          itemCount: navigationMeun.length,
          itemBuilder: (contxt, index) {
            return ListTile(
              title: Text(
                navigationMeun[index].title,
                style: TextStyle(
                  color: Colors.grey.shade700,
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigationMeun[index].destination(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
