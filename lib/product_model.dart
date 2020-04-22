import 'package:flutter/material.dart';

class ProductModel extends StatelessWidget {
  final Function addProduct;

  ProductModel(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProduct({'title': 'Sweets', 'image': 'assets/wolf.jpg'});
      },
      child: Text('Add Card'),
    );
  }
}
