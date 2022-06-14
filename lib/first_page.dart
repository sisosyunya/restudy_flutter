
import 'package:flutter/material.dart';

import 'second_page.dart';

class FirstPage extends StatelessWidget {
  final List<String> entries = <String>['タイトル１', 'タイトル２', 'タイトル３','タイトル４','タイトル５','タイトル６','タイトル７','タイトル８','タイトル９','タイトル１０'];
  String nameText='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Youtube トレース'
        ,style: TextStyle(
          fontWeight:FontWeight.bold,
        ),
      ),
        backgroundColor: Colors.black,
        actions: [
          Icon(Icons.laptop_chromebook_outlined),
          SizedBox(width: 24),
          Icon(Icons.search),
          SizedBox(width: 24),
          Icon(Icons.menu),
          SizedBox(width: 24),
        ],
      ),
      body:Container(
        color: Colors.black,
        child: ListView.builder(
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.network(
                    'https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqGxuQACxqi0fkbGNWy3I1FNV7EbcBKhU-8i1oAEATXI5_Eq_9D9MAK2qXB5bBcKqAGDMwqx4j6JcYDIcqw_MaPg4YSsMhnpaCpUeVPyG9yk9XQChv25uybPEYQklaWPcicXC8_9jlI9v6ss6Y9MSDDwMuKtVajSOCYe7GRgJtAHcL/maxresdefault.jpg?errorImage=false',
                  ),
                  SizedBox(
                    width: 16
                    ),
                    // Expandedにすると、横幅が自動で埋まる
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          entries[index],
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.3,
                          fontSize: 16,
                        ),
                        maxLines: 3,
                        ),
                        Text(
                          '100回視聴　５日前',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
                );
              },
      ),
    ),
    );
  }
}