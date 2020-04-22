import 'package:flutter/material.dart';

class NewProduct extends StatelessWidget {
  final String title;
  final String imgUrl;
  NewProduct(this.title, this.imgUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imgUrl),
            Text(title),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Go Back'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
