import 'package:intl/intl.dart';
import '../provider/orders.dart' as ord;
import 'package:flutter/material.dart';
class OrderItem extends StatelessWidget {
  final ord.OrderItem orders;

  OrderItem(this.orders);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('\$${orders.amount}'),
            trailing: IconButton(
              icon: Icon(Icons.expand_more),
              onPressed: (){},
            ),
            subtitle: Text(DateFormat('dd MM yyyy hh:mm').format(orders.dateTime)),
          )
        ],
      ),
    );
  }
}
