import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'models/commodity-category_2.dart';
import 'models/product-commodity.dart';

class SelectedShopScreen extends StatefulWidget {
  SelectedShopScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  SelectedShopScreenState createState() => SelectedShopScreenState();
}

class SelectedShopScreenState extends State<SelectedShopScreen> {
  List<CommodityCategory2> listOfTiles;
  int shopId = 1;

  Future<List<CommodityCategory2>> _getUsers() async {
    // String url = "http://192.168.10.133:8004/commodityCategory";
    String url = "http://192.168.137.1:8004/commodityCategory";
    var data = await http.get(url);
    var jsonData = json.decode(data.body);
    List<CommodityCategory2> pcList = [];

    for (var u in jsonData) {
      CommodityCategory2 user =
          CommodityCategory2(u["id"], u["name"], u["description"]);
      print(user);
      pcList.add(user);
    }

    setState(() {
         listOfTiles = pcList;
    });

    print(listOfTiles);
    return listOfTiles;
  }

  @override
  Widget build(BuildContext context) {
    _getUsers();
    return Scaffold(
      appBar: AppBar(
        title: Text("Selected Shop Screen"),
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return new StuffInTiles(listOfTiles[index]);
        },
        itemCount: listOfTiles == null ? 0 : listOfTiles.length,
      ),
    );
  }
}

class StuffInTiles extends StatelessWidget {
  final CommodityCategory2 myTile;
  StuffInTiles(this.myTile);
  final List<ProductCommodity> pcList = [];

  @override
  Widget build(BuildContext context) {
    return _buildTiles(myTile);
  }

  Future<List<ProductCommodity>> _getUsers2(int shopId, int categoryId) async {
    // String url = "http://192.168.10.133:8004/productsCommodities/findProductCommodityByShopIdAndCategoryId/" + shopId.toString() + "/" + categoryId.toString();
    String url =
        "http://192.168.137.1:8004/productsCommodities/findProductCommodityByShopIdAndCategoryId/" +
            shopId.toString() +
            "/" +
            categoryId.toString();
    var data = await http.get(url);
    var jsonData = json.decode(data.body);
    print(jsonData);

    for (var u in jsonData) {
      ProductCommodity user = ProductCommodity(
          u["id"], u["name"], u["description"], shopId, categoryId, u["price"]);
      print(user);
      pcList.add(user);
    }

    print(pcList);
    return pcList;
  }

  Widget _buildTiles(CommodityCategory2 t) {
    _getUsers2(1, t.id);

    if (t.productsCommoditiesList.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          subtitle: new Text("Subtitle"),
          leading: new Text("Leading"),
          selected: true,
          trailing: new Text("trailing"),
          title: new Text(t.name));

    return new ExpansionTile(
      key: new PageStorageKey<CommodityCategory2>(t),
      leading: Icon(Icons.arrow_right),
      title: new Text(t.id.toString() + " " + t.name),
      subtitle: new Text(t.description),
      children: pcList.map(_buildTiles2).toList(),
    );
  }

  Widget _buildTiles2(ProductCommodity s) {
    if (s.name.isEmpty)
      return new ListTile(
          dense: true,
          enabled: true,
          isThreeLine: false,
          onLongPress: () => print("long press"),
          onTap: () => print("tap"),
          // subtitle: new Text("Subtitle"),
          // leading: new Text("Leading"),
          selected: true,
          // trailing: new Text("trailing"),
          title: new Text("No data"));

    return new ExpansionTile(
      key: new PageStorageKey<ProductCommodity>(s),
      title:
          new Text(s.id.toString() + " " + s.name + " " + s.price.toString()),
      // children: s.models.map(_buildTiles3).toList(),
    );
  }
}


