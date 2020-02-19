import 'package:flutter/material.dart';
import 'package:thenga_tenga/greens_home.dart';
import 'package:thenga_tenga/landing.dart';
import 'package:thenga_tenga/payment_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'THENGA/ TENGA/ BUY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'THENGA/ TENGA/ BUY'),
       home: LandingScreen(),
      //  home: PaymentDetailsScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              widget.title,
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
                  child: getImageAsset('images/shops/greens.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child:  getImageAsset('images/shops/choppies.png'),
                  ),                
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: getImageAsset('images/shops/spar.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child:  getImageAsset('images/shops/ok.png'),
                  ),                
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
                  child:  getImageAsset('images/shops/electrosales.png'),
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
                  child:  getImageAsset('images/shops/nrichards.jpg'),
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
                  child:  getImageAsset('images/shops/fortwell.jpg'),
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
