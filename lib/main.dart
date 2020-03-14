import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page.dart';
import 'package:flutter_app/products_manager.dart';

void main() => runApp(OurGuard());

class OurGuard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyOurGuard();
  }
}

class _MyOurGuard extends State<OurGuard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}
