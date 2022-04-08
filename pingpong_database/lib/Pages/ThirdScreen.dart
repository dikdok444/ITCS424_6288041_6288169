import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pingpong_database/main.dart';

/*class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
*/
class ThirdScreen extends StatefulWidget {
  @override
  _GridSearchScreenState createState() => _GridSearchScreenState();
}

class _GridSearchScreenState extends State<ThirdScreen> {
  List<String> RacketList = [
    'butterfly-cypress-r',
    'dr-neubauer-barricade-def',
    'lkt-instinct',
    'stiga-allround-classic-wrb',
    'tibhar-stratus-power-wood',
    'xiom-strato',
  ];
  List<String>? PingponRacket;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue.shade300,
            title: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                controller: _textEditingController,
                focusNode: _textFocusNode,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Search here',
                    contentPadding: EdgeInsets.all(8)),
                onChanged: (value) {
                  setState(() {
                    PingponRacket = RacketList.where(
                            (element) => element.contains(value.toLowerCase()))
                        .toList();
                    if (_textEditingController!.text.isNotEmpty &&
                        PingponRacket!.length == 0) {
                      print('PingponRacket length ${PingponRacket!.length}');
                    }
                  });
                },
              ),
            )),
        body: _textEditingController!.text.isNotEmpty &&
                PingponRacket!.length == 0
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search_off,
                          size: 160,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'No results found,\nPlease try different keyword',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  crossAxisSpacing: 12,
                ),
                itemCount: _textEditingController!.text.isNotEmpty
                    ? PingponRacket!.length
                    : RacketList.length,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Icon(Icons.sports_tennis),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(_textEditingController!.text.isNotEmpty
                            ? PingponRacket![index]
                            : RacketList[index]),
                      ],
                    ),
                  );
                }));
  }
}
