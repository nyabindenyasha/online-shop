import 'package:flutter/material.dart';
import 'package:thenga_tenga/greens_home.dart';
import 'choppies_home.dart';
import 'ok_home.dart';
import 'spar_home.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var title = 'THENGA/ TENGA/ BUY';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GreensHomeScreen(),
                          ));
                    },
                    child: getImageAsset('images/shops/greens.png'),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChoppiesHomeScreen(),
                            ));
                      },
                      child: getImageAsset('images/shops/choppies.png'),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SparHomeScreen(),
                            ));
                      },
                      child: getImageAsset('images/shops/spar.png'),
                    )),
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OkHomeScreen(),
                            ));
                      },
                      child: getImageAsset('images/shops/ok.png'),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: getImageAsset('images/shops/pnp.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: getImageAsset('images/shops/electrosales.png'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: getImageAsset('images/shops/metropeech.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: getImageAsset('images/shops/nrichards.jpg'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: getImageAsset('images/shops/foodforless.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: getImageAsset('images/shops/fortwell.jpg'),
                ),
              ],
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
    height: 90.0,
    width: 130.0,
  );
  return Container(
    child: image,
    margin: EdgeInsets.only(top: 5.0),
  );
}
