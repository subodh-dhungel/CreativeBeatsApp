import 'package:flutter/material.dart';

class BuyOurProductsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Item 1'),
          contentPadding: EdgeInsets.all(20),
        ),
        ListTile(
          title: Text('Item 2'),
          contentPadding: EdgeInsets.all(20),
        ),
        ListTile(
          title: Text('Item 3'),
          contentPadding: EdgeInsets.all(20),
        ),
        ListTile(
          title: Text('Item 4'),
          contentPadding: EdgeInsets.all(20),
        ),
        ListTile(
          title: Text('Item 5'),
          contentPadding: EdgeInsets.all(20),
        ),
      ],
    );
  }
}