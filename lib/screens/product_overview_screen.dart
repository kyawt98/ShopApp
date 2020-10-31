import 'package:chapter_8_shopapp/provider/cart.dart';
import 'package:provider/provider.dart';

import '../widgets/badge.dart';
import '../widgets/product_grid.dart';
import 'package:flutter/material.dart';

enum FilterOption { Favourite, All }

class ProduceOverviewScreen extends StatefulWidget {
  @override
  _ProduceOverviewScreenState createState() => _ProduceOverviewScreenState();
}

class _ProduceOverviewScreenState extends State<ProduceOverviewScreen> {
  var _showOnlyFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amazon'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOption selectedVal) {
              setState(() {
                if (selectedVal == FilterOption.Favourite) {
                  _showOnlyFavourite = true;
                } else {
                  _showOnlyFavourite = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Only Favourite'),
                value: FilterOption.Favourite,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOption.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, cart, child) => Badge(
              child: child,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ProductsGrid(_showOnlyFavourite),
    );
  }
}
