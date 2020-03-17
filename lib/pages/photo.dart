import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<PhotoPage> {
  List<String> list = ['xx', 'yy', 'zz'];
  var user = {};
  @override
  Widget build(BuildContext context) {
    String args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo show'),
      ),
      // body: Column(
      //   children: list.where((element)=> element !='yy').map((element) {
       
      //       return Text(element);

      //   }).toList(),
      // ),

    body: RaisedButton(child: Text('ok'),
    
    onPressed: (){
      user['username'] = 'admin';
      user['password'] = '1234';
      String jsonStr = json.encode(user);
            print(jsonStr);

    },),
    );
  }
}
