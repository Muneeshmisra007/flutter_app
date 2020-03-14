import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String valuesPassed;

  ProductPage(this.valuesPassed);


  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          title: Text("OurGuard"),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(valuesPassed),
            Text("Product Detail"),
            FlatButton(
                onPressed: () {
                  Navigator.pop(context, "####sent data back to list page");
                },
                child: Text('Back'))
          ],
        ));
  }


}
