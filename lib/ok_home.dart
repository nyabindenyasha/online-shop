import 'package:flutter/material.dart';

import 'exp_tile_tenga.dart';

class OkHomeScreen extends StatefulWidget {
  const OkHomeScreen({Key key}) : super(key: key);

  @override
  OkHomeScreenState createState() => OkHomeScreenState();
}

class OkHomeScreenState extends State<OkHomeScreen> {
  var title = 'THENGA/ TENGA/ BUY';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 0.0, bottom: 10.0, left: 20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      getImageAsset('images/shops/ok.png'),
                       TileAppTenga(),
                    ]
                  )
              ),
          ],
        ),
      ),
    );
  }
}

Widget getImageAsset(String nameOfImage) {
  AssetImage assetImage = AssetImage(nameOfImage);
  Image image = Image(
    image: assetImage,
    height: 60.0,
    width: 100.0,
  );
  return Container(
    child: image,
    margin: EdgeInsets.only(top: 5.0),
  );
}
