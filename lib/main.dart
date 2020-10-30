import './screens/product_detail_screen.dart';
import './screens/product_overview_screen.dart';
import 'package:flutter/material.dart';
import './provider/products.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(primarySwatch: Colors.purple, accentColor: Colors.deepOrangeAccent, fontFamily: 'PlayFair'),
        home: MyHomePage(),
        routes: {
          ProductDetailScreen.routeName : (ctx) => ProductDetailScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProduceOverviewScreen(),
    );
  }

}
