import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('My first app'),
        // ),
        body: Container(
      child: Center(
        child: ListView(
          shrinkWrap: true,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(child: Image.asset('images/logo.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 5, 50, 10),
              child: TextField(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(labelText: 'Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: TextField(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () =>
                    print("xxxx2")
                  ,
                  child: Text('login'),
                ),
                RaisedButton(
                  onPressed: (){
                    print("zzz");
                  },
                  child: Text('Register'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Text('2019 \u00a9 wachira studio')),
            ),
          ],
        ),
      ),
    ));
  }
}
