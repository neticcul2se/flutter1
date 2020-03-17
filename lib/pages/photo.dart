import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PhotoPage extends StatefulWidget {
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {

     String args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo show'),
      ),
      body: Text(args),

    );
  }
}