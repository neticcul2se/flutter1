import 'package:firstapp/pages/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomepageState();
  }
}

class _HomepageState extends State<Homepage> {
  String message;
  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();

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
                controller: _usernameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              child: TextField(
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                controller: _passwordController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    message = _usernameController.text;
                    // setState(() {

                    // });
                    Navigator.pushNamed(context, '/photo-page', arguments: [
                      _usernameController.text,
                      _passwordController.text
                    ]);
                    print("xxx");
                  },
                  child: Text('login'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/native-page');
                    setState(() {
                      // message = _usernameController.text;
                    });
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => PhotoPage(_usernameController.text)));
                  },

                  child: Text('Native'),
                
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Text('2019 \u00a9 wachira studio')),
            ),
            (message != null) ? Text(message) : Container(),
          ],
        ),
      ),
    ));
  }
}
