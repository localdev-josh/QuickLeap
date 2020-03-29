import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';


class GetMarkets extends StatefulWidget {
  @override
  _GetMarketsState createState() => _GetMarketsState();
}

class _GetMarketsState extends State<GetMarkets> {
  Future getMarketList;

  Future getMarket() async {
    var res = await http.get(
        Uri.encodeFull('https://jsonplaceholder.typicode.com/albums/1/photos'),
        headers: {"Accept": "application/json"});
    var resBody = json.decode(res.body);
    print(resBody);
    return resBody;
  }

  @override
  initState() {
    super.initState();
    getMarketList = getMarket();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    );
  }
}


//class MarketItemsList{
//  List<MarketItems> marketitemList;
//
//  MarketItemsList({@required this.marketitemList});
//}
//
//
//class MarketItems{
//
//  int id;
//  String title;
//  double price;
//  String imgUrl;
//  int quantity;
//
//  MarketItems({
//    @required this.id,
//    @required this.imgUrl,
//    @required this.price,
//    @required this.title,
//
//    this.quantity = 1
//});
//
//  void incrementQuantity(){
//    this.quantity = this.quantity + 1;
//  }
//
//  void decrementQuantity(){
//    this.quantity = this.quantity - 1;
//  }
//}