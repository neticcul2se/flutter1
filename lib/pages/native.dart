import 'dart:io';

import 'package:firstapp/models/reqlogin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';


class NativePage extends StatefulWidget {
  @override
  _NativePageState createState() => _NativePageState();
}

class _NativePageState extends State<NativePage> {
  String base64;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Native Feture'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Toast.show("ทดสอบ Toast", context,
                  duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
            },
            child: Text('Toast'),
          ),
          RaisedButton(
            onPressed: () async {
              ByteData bs = await rootBundle.load('images/logo.png');
              List<int> ls = bs.buffer.asUint8List();
              base64 = convert.base64Encode(ls);
              debugPrint(base64);
            },
            child: Text('Base 64'),
          ),
          (base64 != null) ? Text(base64) : Container(),
          RaisedButton(
            onPressed: () async {
              var reqLogin = ReqLogin();
              reqLogin.email = "eve.holt@reqres.in";
              reqLogin.password = "cityslicka";
              String jsonReq = reqLoginToJson(reqLogin);

              print(jsonReq);
              var response = await http.post('https://reqres.in/api/login',
                  body: jsonReq,
                  headers: {HttpHeaders.contentTypeHeader: 'application/json'});
              print(response.statusCode.toString() + ' ' + response.body);
            },
            child: Text('http'),
          ),
          RaisedButton(
            onPressed: () async {
                var image = await ImagePicker.pickImage(source: ImageSource.camera);
                

            },
            child: Text('Camera'),
          ),
        ],
      ),
    );
  }
}
