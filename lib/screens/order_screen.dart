import '../widgets/app_drawer.dart';
import '../widgets/order_item.dart';
import '../provider/orders.dart' show Orders;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  static const routeName ='/order-screen';
  @override
  Widget build(BuildContext context) {
    final ordersData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Order'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (context, index) => OrderItem(ordersData.orders[index]),
        itemCount: ordersData.orders.length,
      ),
    );
  }
}
