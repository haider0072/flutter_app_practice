import 'package:flutter/material.dart';
import 'package:practice_app/pages/manage_products.dart';

import './pages/authentication.dart';
import './product_manager.dart';
import './pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authentication(),
      routes: {
        '/ManageProduct': (BuildContext context) => ManageProducts(),
        '/Homepage': (BuildContext context) => HomePage(),
      },
    );
  }
}
