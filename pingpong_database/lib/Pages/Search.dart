import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pingpong_database/Pages/TTModel.dart';
import 'package:pingpong_database/main.dart';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Table Tennis App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final dio = Dio();
  //final List<TTModel> TTdata =

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List? _tabletennis;

  void searchTT(String query) async {
    final response = await widget.dio.get(
      "https://4t03f4nk05.execute-api.us-east-2.amazonaws.com/product?",
      queryParameters: {
        'name': query,
      },
    );
    //print(response);

    /*List ttname = json
        .decode(response.data['Items']['name']['S'])
        .map((data) => TTModel.fromJson(data))
        .toList();
    ;
    print(ttname);*/
    setState(() {
      _tabletennis = response.data['Items'];
    });
    //print(response.data['Items'][0]['control']['N']);
    print(response.data['Items']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.popUntil(context, ModalRoute.withName('/Home'));
                },
                child: const Text('Home'),
                style:
                    ElevatedButton.styleFrom(primary: Colors.yellow.shade600)),*/
            ResultPage(onSearch: searchTT),
            _tabletennis == null
                ? Text("")
                : Expanded(
                    child: ListView(
                      children: _tabletennis!.map((tabletennis) {
                        return ListTile(
                          title: Text(tabletennis['name']['S']),
                          subtitle: Text('speed ${tabletennis['speed']['N']} \n'
                              'control ${tabletennis['control']['N']}'),
                          leading: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.network(tabletennis['picture']['S']),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

class ResultPage extends StatefulWidget {
  ResultPage({required this.onSearch});
  final void Function(String search) onSearch;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final _Key = GlobalKey<FormState>();
  var _search;
  @override
  Widget build(context) {
    return Form(
      key: _Key,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) {
              _search = value;
            },
            validator: (value) {
              if (value!.isNotEmpty) {
                return "KUY";
              }
              return null;
            },
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton(
            onPressed: () {
              widget.onSearch(_search);
            },
            color: Colors.blue,
            child: Text(
              "Search",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
