
import 'package:flutter/material.dart';

import 'second_page.dart';

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
            // MaterialPageRouteは画面遷移を行うためのクラス
            
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          child:const Text('次の画面へ'),
        ),
      ),
    );
  }
}
