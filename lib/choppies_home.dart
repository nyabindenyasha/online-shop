import 'package:flutter/material.dart';

class ChoppiesHomeScreen extends StatefulWidget {
  const ChoppiesHomeScreen({Key key}) : super(key: key);

  @override
  ChoppiesHomeScreenState createState() => ChoppiesHomeScreenState();
}

class ChoppiesHomeScreenState extends State<ChoppiesHomeScreen>{
  var title =  'THENGA/ TENGA/ BUY';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
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
                  getImageAsset('images/shops/choppies.png'),    
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