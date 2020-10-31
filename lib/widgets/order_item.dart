import 'package:intl/intl.dart';
import '../provider/orders.dart' as ord;
import 'package:flutter/material.dart';
import 'dart:math';

class OrderItem extends StatefulWidget {
  final ord.OrderItem orders;

  OrderItem(this.orders);

  @override
  _OrderItemState createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  var _expended = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('\$${widget.orders.amount}'),
            trailing: IconButton(
              icon: Icon(_expended ? Icons.expand_less : Icons.expand_more),
              onPressed: () {
                setState(() {
                  _expended = !_expended;
                });
              },
            ),
            subtitle: Text(
                DateFormat('dd MM yyyy hh:mm').format(widget.orders.dateTime)),
          ),
          if (_expended)
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              height: min(widget.orders.products.length * 20 + 20.0, 150),
              width: double.infinity,
              child: ListView(
                  children: widget.orders.products
                      .map((product) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FittedBox(
                                child: Text(
                                  product.title,
                                  style: TextStyle(
                                      fontSize: 16, ),
                                ),
                              ),
                              Text(
                                '${product.quantity} x \$${product.price}',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ))
                      .toList()),
            )
        ],
      ),
    );
  }
}
