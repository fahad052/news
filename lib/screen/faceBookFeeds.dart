import 'package:flutter/material.dart';

import '../Navigation_Drawer.dart';

class FaceBookFeeds extends StatefulWidget {
  @override
  _FaceBookFeedsState createState() => _FaceBookFeedsState();
}

class _FaceBookFeedsState extends State<FaceBookFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text('FaceBook Feeds'),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _rowHeadr(),
                    _rowTitle(),
                    _rowHashtag(),
                    _rowBody(),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                Text(
                  'Christina Meyers ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Fri,12 May 2017 . 14.30',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  '25',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _rowTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'We also talk about the future of work as the robots',
        style: TextStyle(
          color: Colors.grey.shade800,
        ),
      ),
    );
  }

  Widget _rowHashtag() {
    return Container(
      child: Wrap(
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Transform.translate(
              offset: Offset(-40, 0),
              child: Text(
                '#reto',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Transform.translate(
              offset: Offset(-80, 0),
              child: Text(
                '#facebook',
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rowBody() {
    return SizedBox(
      child: Image(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.25,
        image: AssetImage(
          'assets/images/d6.jpg',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _rowFloore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            FlatButton(
              onPressed: () {},
              child: Text(
                '10 COMMENTS',
                style: TextStyle(
                  color: Colors.orange,
                ),
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
