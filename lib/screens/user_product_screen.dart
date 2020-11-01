import '../widgets/user_product_item.dart';
import '../provider/products.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserProductScreen extends StatelessWidget {
  static const routeName = 'user-product';

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your products'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {

              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            itemBuilder: (context, index) => Column(
              children: <Widget>[
                UserProductItem(
                    imgUrl: productData.items[index].imgUrl,
                    title: productData.items[index].title),
                Divider()
              ],
            ),
            itemCount: productData.items.length,
          ),
        ));
  }
}
