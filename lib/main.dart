import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'aaa Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('しゅんや'),
      ),
      body:Container(
        color: Color.fromARGB(255, 27, 35, 86),
        width: double.infinity,
        height: double.infinity,
        // Columnにすると、子Widgetが上下に並ぶ
        // Rowにすると、子Widgetが左右に並ぶ
        child:Row(
          children: [
            Text('syunyadesu'),
            Text('さうな'),
            Container(
              width:50,
              height: 40,
              color: Colors.blue,
            ),
            Text('syunyadesu'),
            Text('syunyadesu'),
            Text('syunyadesu'),
          ],),
      )
    );
  }
}
