import 'package:flutter/material.dart';

import '../products_manager.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

     /* drawer: Drawer(child: ,),*/
      appBar: AppBar(
        title: Text("OurGuard"),
        elevation: 0,
      ),
      body: ProductManager(),
    );
  }
}
