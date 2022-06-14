
import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['A', 'B', 'C','aaa'];
  String nameText='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('リスト'),
      ),
      body:ListView.builder(
        itemCount: entries.length,
        // indexはリストのインデックス
        itemBuilder: (BuildContext context, int index) {
          return  Center(child: Text('Entry ${entries[index]}',
          style: TextStyle(fontSize: 40),
          ),
          );
        }),
    );
  }
}