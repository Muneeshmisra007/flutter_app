import 'package:flutter/material.dart';
import 'package:flutter_app/product_controller.dart';
import 'package:flutter_app/products.dart';

class ProductManager extends StatefulWidget {
//  final String _products;

  ProductManager();

  @override
  State<StatefulWidget> createState() {
    return _ProductManager();
  }
}

class _ProductManager extends State<ProductManager> {
  List<String> _products = [];
  int count = 0;

  @override
  void initState() {
   // this._products.add(widget._products);
    super.initState();
  }

  onProductChange(String product){
    setState(() {
      count++;
      _products.add('$product Product$count added');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0),
          child: ProductController(onProductChange)),
      Products(_products),
    ]);
  }
}
