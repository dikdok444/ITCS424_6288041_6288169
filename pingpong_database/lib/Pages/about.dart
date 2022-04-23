import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pingpong_database/main.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AMOGUS'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(300, 20, 80, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Member",
              style: TextStyle(
                letterSpacing: 5,
                fontSize: 60,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4D03AQEWfF139fhQxg/profile-displayphoto-shrink_800_800/0/1616466851008?e=1655942400&v=beta&t=QQAuBoLqip-QPMeZKoywkoHapoOxqsV84nyqV6IoiXI"),
              radius: 80,
            ),
            Text(
              "Prin Satitchaipaisarn\n         6288041",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4E03AQFDpdAGGbcu1w/profile-displayphoto-shrink_800_800/0/1616665526233?e=1655942400&v=beta&t=ijEjey-UktMiCqWa2OjHjGLPIVviyoapfMiS6l3fRss"),
              radius: 80,
            ),
            Text(
              "Natchanon Ragchart\n         6288169",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
