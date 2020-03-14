import 'package:flutter/material.dart';
import 'package:flutter_app/pages/product_detail.dart';

class Products extends StatelessWidget {
  List<String> products;

  Products(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(children: <Widget>[
      Image.asset('assets/two.jpg'),
      Text(products[index]),
      FlatButton(
        onPressed: () {
          Navigator.push<String>(context,
              MaterialPageRoute(builder: (BuildContext contex)=> ProductPage("assets/two.jpg")
          )).then((String value){
            print(value);
          });
        },
        child: Text("product detail"),
      )
    ]));
  }

  @override
  Widget build(BuildContext context) {
    return products.length > 0
        ? Expanded(
            child: ListView.builder(
                itemBuilder: _buildProductItem, itemCount: products.length))
        : Center(
            child: Text('Currently no product (^_^)'),
          );
  }
}
