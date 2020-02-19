import 'package:flutter/material.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({Key key}) : super(key: key);

  @override
  _PaymentDetailsScreenState createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen>{
  var title =  'THENGA/ TENGA/ BUY';

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  getImageAsset('images/payment/ecocash.png'),             
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  getImageAsset('images/payment/onemoney.png'),             
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  getImageAsset('images/payment/telecash.png'),             
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  getImageAsset('images/payment/zimswitch.png'),             
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
    height: 100.0,
    width: 180.0,
  );
  return Container(
    child: image,
    margin: EdgeInsets.only(top: 5.0),
  );
}
