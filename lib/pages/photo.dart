import 'dart:convert';

import 'package:firstapp/models/login.dart';
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

  @override
  Widget build(BuildContext context) {
    List<String>  args = ModalRoute.of(context).settings.arguments;
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

      var login = Login();
      login.username = args[0];
      login.password = args[1];
      String jsonStr = loginToJson(login);

        print(jsonStr);

    },),
    );
  }
}
