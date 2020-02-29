import 'package:flutter/material.dart';
import 'package:flutter_notebook_4th/ep375_market_place_app/market_model.dart';

class ItemWithBanner extends StatelessWidget {
  final MarketItem item;

  ItemWithBanner({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        color: Colors.red
      ),
    );
  }
}
