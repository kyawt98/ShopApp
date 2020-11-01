import './screens/edit_product_screen.dart';
import './screens/user_product_screen.dart';
import './screens/order_screen.dart';
import './provider/orders.dart';
import './screens/cart_screen.dart';
import './provider/cart.dart';
import './screens/product_detail_screen.dart';
import './screens/product_overview_screen.dart';
import 'package:flutter/material.dart';
import './provider/products.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(value: Orders())
      ],
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrangeAccent,
            fontFamily: 'PlayFair'),
        home: MyHomePage(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrderScreen.routeName: (ctx) => OrderScreen(),
          UserProductScreen.routeName: (ctx) => UserProductScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProduceOverviewScreen(),
    );
  }
}
