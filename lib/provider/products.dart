import 'product.dart';
import 'package:flutter/material.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Ultra Soft Fleece Midweight Casual Solid Cargo Jogger Pants ',
        description: ' Drawstring closure ',
        price: 22.0,
        imgUrl:
            'https://images-na.ssl-images-amazon.com/images/I/71MCpvYk7FL._AC_SY500._SX._UX._SY._UY_.jpg'),
    Product(
        id: 'p2',
        title: ' Starter Women Soccer Pants, Prime Exclusive ',
        description: ' 100% Polyester  ',
        price: 22.86,
        imgUrl:
            'https://m.media-amazon.com/images/I/71k9Tev7jzL._AC_UL320_.jpg'),
    Product(
        id: 'p3',
        title:
            'Amazon Brand - Core 10 Women (XS-3X) Motion Tech Fleece Relaxed Fit Jogger Sweatpant  ',
        description: ' 66% Cotton, 34% Polyester ',
        price: 37.10,
        imgUrl:
            'https://m.media-amazon.com/images/I/81DZm-K935L._AC_UL320_.jpg'),
    Product(
        id: 'p4',
        title:
            'Amazon Brand - Mae Women Sleepwear Marshmallow Fleece Pullover Top and Jogger Pajama Set  ',
        description: '  100% Polyester  ',
        price: 22.04,
        imgUrl:
            'https://m.media-amazon.com/images/I/81cyHFk+NfL._MCnd_SEARCH281250_AC_UL320_.jpg'),
    Product(
        id: 'p5',
        title: 'Amazon Brand - Goodthreads Women Denim Cargo Jeans  ',
        description: '  92% Cotton, 4% Polyester, 4% Elastane  ',
        price: 45.0,
        imgUrl:
            'https://m.media-amazon.com/images/I/815xr5V+xnL._AC_UL320_.jpg'),
    Product(
        id: 'p6',
        title:
            'The Drop Women Greta Fitted Square Neck Halter Sweater Bralette',
        description: ' 65% Viscose, 35% Nylon-Spandex ',
        price: 29.90,
        imgUrl:
            'https://m.media-amazon.com/images/I/811JsLV7f2L._AC_UL320_.jpg'),
    Product(
        id: 'p7',
        title: 'The Drop Women Dina Fleece Elastic Hem Sweatpant  ',
        description: '  60% Cotton, 40% Polyester ',
        price: 44.90,
        imgUrl:
            'https://m.media-amazon.com/images/I/81qUO1oQZ1L._AC_UL320_.jpg'),
  ];

  // var _showFavouriteOnly = false;

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favouriteItems {
    return _items.where((productItem) => productItem.isFavourite).toList();
  }
  // void showFavouriteOnly() {
  //   _showFavouriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavouriteOnly = false;
  //   notifyListeners();
  // }

  Product findById(String id) {
    return _items.firstWhere((item) => item.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
