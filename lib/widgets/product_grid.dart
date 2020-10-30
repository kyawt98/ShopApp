import '../provider/products.dart';
import '../widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ProductsGrid extends StatelessWidget {
 final bool showFav;
 ProductsGrid(this.showFav);

  @override
  Widget build(BuildContext context) {
   final productData = Provider.of<Products>(context);
   final products = showFav ? productData.favouriteItems : productData.items;
    return GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0),
        itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: products[index],
          // builder: (context) => products[index],
          child: ProductItem(),
        ));
  }
}