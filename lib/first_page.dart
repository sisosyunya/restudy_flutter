
import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('画面遷移'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text){
                nameText=text;
              },
              // obscureText: true,で入力した文字を隠せる
              // obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '名前を入力してください',
              ),
            ),
            Center(
              child:ElevatedButton(
                onPressed: (){
                  //ボタン押したときに呼ばれるコードを書く
                  // MaterialPageRouteは画面遷移を行うためのクラス
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage(nameText),
                    // fullscreenDialog: trueで画面遷移時に下から出てくる
                    fullscreenDialog: true,
                    ),
                  );
                },
                child:const Text('次の画面へ'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
