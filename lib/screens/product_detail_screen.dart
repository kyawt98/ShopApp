import '../provider/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productID =
        ModalRoute.of(context).settings.arguments as String; // to get id
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedProduct.imgUrl,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${loadedProduct.price}',
              style: TextStyle(fontSize: 26, color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              loadedProduct.description,
              textAlign: TextAlign.center,
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
