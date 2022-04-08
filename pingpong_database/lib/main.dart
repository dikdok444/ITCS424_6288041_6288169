import 'dart:js';

import 'package:flutter/material.dart';

import 'package:pingpong_database/Pages/SecondScreen.dart';
import 'package:pingpong_database/Pages/ThirdScreen.dart';
import 'package:pingpong_database/Pages/Customize.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Homepage',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Favorite': (context) => const SecondScreen(),
        '/Search': (context) => ThirdScreen(),
        '/Customize': (context) => const Customize(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homepage'),
      ),
      body: Center(
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
              Text(
                'Press to go to add your favorite racket',
                style: Theme.of(context).textTheme.headline6,
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
              ElevatedButton(
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/Customize');
                  },
                  child: const Text('Customize'),
                  style:
                      ElevatedButton.styleFrom(primary: Colors.green.shade600)),
            ],
          ),
        ),
      ),
    );
  }
}
