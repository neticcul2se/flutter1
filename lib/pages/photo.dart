import 'package:firstapp/models/photos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PhotoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PhotoPageState();
  }
}

class _PhotoPageState extends State<PhotoPage> {
  List<Photo> photos;
  @override
  Widget build(BuildContext context) {
    List<String> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Photo show'),
      ),
      // body: Column(
      //   children: list.where((element)=> element !='yy').map((element) {

      //       return Text(element);

      //   }).toList(),
      // ),

      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('load data'),
                onPressed: () {
                  Future<String> photosJson =
                      rootBundle.loadString('json/photos.json');
                  photosJson.then((value) {
                    photos = photoFromJson(value);
                    print(photos.length);
                  });
                },
              ),
              RaisedButton(
                child: Text('read'),
                onPressed: () {
                  setState(() {
                    print('zzzz');
                  });
                },
              ),
            ],
          ),
          (photos != null)
              ? Column(
                  children: photos.getRange(0, 5).map((photo) {
                  return Card(
                    child: ListTile(
                      title: Text(photo.title),
                      leading: Image.network(
                        photo.thumbnailUrl,
                        width: 50,
                      ),
                    ),
                  );
                }).toList())
              : Container()
        ],
      ),
    );
  }
}
