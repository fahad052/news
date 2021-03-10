import 'package:flutter/material.dart';
import 'package:news/Navigation_Drawer.dart';

class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('Twitter Feeds'),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                child: Column(
                  children: [
                    _rowHeadr(),
                    _rowBody(),
                    _rowDivier(),
                    _rowFloore(),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget _rowHeadr() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundColor: Colors.red[300],
            radius: 24,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Christina Meyers ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '@ch_meyers',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Fri,12 May 2017 . 14.30',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _rowBody() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16),
        child: Text(
          'We also talk about the future of work as the robots advance, and we ask whether a reto phone',
          style: TextStyle(
            height: 1.50,
            fontSize: 13,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }

  Widget _rowDivier() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 1,
        width: double.infinity,
        color: Colors.grey.shade300,
      ),
    );
  }

  Widget _rowFloore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.repeat),
              color: Colors.orange,
              onPressed: () {},
            ),
            Text(
              '25',
              style: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ],
        ),
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text(
                'SHARE',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'OPEN',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
