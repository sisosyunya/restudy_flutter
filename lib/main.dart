import 'package:flutter/material.dart';
import 'package:restudy/first_page.dart';

void main() {
  // runAppはメインのウィジェットを指定する関数
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
      home: FirstPage(),
    );
  }
}

