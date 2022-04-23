import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pingpong_database/main.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:dio/dio.dart';

class COVID extends StatefulWidget {
  const COVID({Key? key}) : super(key: key);

  @override
  State<COVID> createState() => _COVIDState();
}

class _COVIDState extends State<COVID> {
  int? _api;
  void covidapi() async {
    final response = await Dio()
        .get("https://covid19.ddc.moph.go.th/api/Cases/today-cases-all");
    //final jsonBody = json.decode(response.data) as List;
    final res = response.data[0];
    //print(res);
    //print(res.runtimeType);
    //res.replaceAll('[', '');
    //res.replaceAll(']', '');
    //print(res.length);
    //for (int loop = 0; loop < res.length; loop++) {
    //print(res[loop]);
    //}
    //final res1 = res[0];
    //int newcase = res1["new_case"];
    setState(() {
      _api = res['new_case'];
    });
    //print(res1["new_case"]);
    //print(res1.runtimeType);
  }

  @override
  Widget build(BuildContext context) {
    //final api = covidapi();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid info'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(300, 20, 80, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
             'new case ${_api}',
             ),
          ],
        ),
      ),
    );
  }
}
