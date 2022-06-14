import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('セカンド'),
        backgroundColor: Colors.black,
      ),
      body:Center(
        child:ElevatedButton(
          onPressed: (){
            //ボタン押したときに呼ばれるコードを書く
            Navigator.pop(context);
          },
          child:const Text('前の画面'),
        ),
      ),
    );
  }
}
