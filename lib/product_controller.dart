import 'package:flutter/material.dart';

class ProductController extends StatelessWidget {

  final Function onProductChange;

  ProductController(this.onProductChange);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text('Add card'),
      onPressed: () {
        onProductChange("wow");
      }
    );
  }
}
