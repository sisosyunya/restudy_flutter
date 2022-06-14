import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // ここで定義したものは
  SecondPage(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('セカンド'),
        backgroundColor: Colors.black,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(name,
          style: TextStyle(
            fontSize: 50,
          ),)
          ,
          Center(
            child:ElevatedButton(
              onPressed: (){
                //ボタン押したときに呼ばれるコードを書く
                Navigator.pop(context);
              },
              child:const Text('前の画面'),
            ),
          ),
        ],
      ),
    );
  }
}
