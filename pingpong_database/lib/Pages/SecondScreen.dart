import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pingpong_database/main.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favortie'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                const Text(
                  'Add your favorite pingpong racket here ',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.5,
                    fontSize: 30,
                  ),
                ),
                Image.asset(
                  'images/stiga-allround-classic-wrb.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'A perfect balance between speed, weight and feel lies behind All round Classic enormous popularity among competitive players ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    const Icon(Icons.star, color: Colors.black),
                    const Icon(Icons.star, color: Colors.black),
                  ],
                ),
                DefaultTextStyle.merge(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite, color: Colors.green[500]),
                          const Text('Added to favorite:'),
                          const Text('click again to unfavorite'),
                        ],
                      ),
                    ],
                  ),
                )),
                Image.asset(
                  'images/xiom-strato.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'Improved Hinoki-Carbon blade of 7.0 mm thickness.High power, comfortable feel, and all-round capability. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                  ],
                ),
                DefaultTextStyle.merge(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite, color: Colors.green[500]),
                          const Text('Added to favorite:'),
                          const Text('click again to unfavorite'),
                        ],
                      ),
                    ],
                  ),
                )),
                Image.asset(
                  'images/tibhar-stratus-power-wood.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'This 5-ply offensive wood distinguishes itself by an unlimited flexibility. From the hard flip to a finer Topspin with lots of spin, you will be able to realise the whole pallet of stroke play for the offensive game with Stratus Powerwood!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                    Icon(Icons.star, color: Colors.green[500]),
                  ],
                ),
                DefaultTextStyle.merge(
                    child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.favorite, color: Colors.green[500]),
                          const Text('Added to favorite:'),
                          const Text('click again to unfavorite'),
                        ],
                      ),
                    ],
                  ),
                )),
                ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/Search');
                    },
                    child: const Text('Search'),
                    style:
                        ElevatedButton.styleFrom(primary: Colors.red.shade600)),
                ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/Customize');
                    },
                    child: const Text('Customize'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow.shade600)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
