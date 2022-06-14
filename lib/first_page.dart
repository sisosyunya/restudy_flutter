
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('画面遷移'),
      ),
      body:Center(
        child:ElevatedButton(
          onPressed: (){
            //ボタン押したときに呼ばれるコードを書く
          },
          child:const Text('次の画面へ'),
        ),
      ),
    );
  }
}
