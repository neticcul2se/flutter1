import 'package:firstapp/pages/home.dart';
import 'package:firstapp/pages/native.dart';
import 'package:firstapp/pages/photo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: {'/photo-page': (context) => PhotoPage(),
      '/native-page': (context) => NativePage()},
    );
  }
}
