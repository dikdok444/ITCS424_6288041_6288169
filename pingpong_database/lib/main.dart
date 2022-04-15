import 'dart:js';

import 'package:flutter/material.dart';

import 'package:pingpong_database/Pages/SecondScreen.dart';
import 'package:pingpong_database/Pages/ThirdScreen.dart';
import 'package:pingpong_database/Pages/Customize.dart';
import 'package:pingpong_database/Pages/Search.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Homepage',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/Home',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/Home': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/Favorite': (context) => const SecondScreen(),
        '/Search': (context) => MyApp(),
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
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'images/stiga-allround-classic-wrb.jpg',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Press to go to add your favorite racket',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/Search');
                  },
                  child: const Text('Search'),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF3592FD), fixedSize: Size(100, 25))),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/Favorite');
                },
                child: const Text('Favorite'),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF3592FD), fixedSize: Size(100, 25)),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
