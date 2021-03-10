import 'dart:math';

import 'package:flutter/material.dart';

class Favorited extends StatefulWidget {
  @override
  _FavoritedState createState() => _FavoritedState();
}

List<Color> colorsList = [
  Colors.red,
  Colors.teal,
  Colors.indigo,
  Colors.brown,
  Colors.purple,
  Colors.pink,
  Colors.yellow,
];

Random random = Random();

Color _getRandomColor() {
  return colorsList[random.nextInt(colorsList.length)];
}

class _FavoritedState extends State<Favorited> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            child: Column(
              children: [
                _authorRow(),
                _newsItemRow(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _authorRow() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red[200],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fahad Alotaibi',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '15 min.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        Text(
                          'Life Style',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: _getRandomColor(),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Icon(Icons.bookmark_border, color: Colors.grey.shade600),
        ],
      ),
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 20, bottom: 40),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/d5.jpg'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tech Tent: Old phones and safe social',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We also talk about the future of work as the robots advance, and we ask whether a reto phone',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  height: 1.50,
                ),
                maxLines: 3,
              ),
              SizedBox(height: 35),
            ],
          ),
        )
      ],
    );
  }
}
