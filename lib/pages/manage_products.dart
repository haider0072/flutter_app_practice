import 'package:flutter/material.dart';

import './home.dart';
import './product_create.dart';
import './product_list.dart';

class ManageProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
            child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('All Products'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/Homepage');
              },
            ),
          ],
        )),
        appBar: AppBar(
          title: Text('Products Management'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create Product',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My Product',
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreate(),
            ProductList(),
          ],
        ),
      ),
    );
    ;
  }
}
