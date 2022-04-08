import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pingpong_database/main.dart';

class Customize extends StatelessWidget {
  const Customize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                Text(
                  'Welcome To the PingPong information',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Image.asset(
                  'images/stiga-allround-classic-wrb.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'stiga-allround-classic-wrb',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                Image.asset(
                  'images/tibhar-stratus-power-wood.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'tibhar-stratus-power-wood',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                Image.asset(
                  'images/xiom-strato.jpg',
                  fit: BoxFit.cover,
                ),
                const Text(
                  'xiom-strato',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Georgia',
                    fontSize: 18,
                  ),
                ),
                ElevatedButton(
                    // Within the `FirstScreen` widget
                    onPressed: () {
                      // Navigate to the second screen using a named route.
                      Navigator.pushNamed(context, '/Search');
                    },
                    child: const Text('Search'),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow.shade600)),
                ElevatedButton(
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/Favorite');
                  },
                  child: const Text('Favorite'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
