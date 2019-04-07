import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> _products;

  Products(this._products){
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    // TODO: implement build
    return Column(
        children: _products
            .map((elements) => Card(
                  child: Column(
                    children: <Widget>[
                      //Image.asset('assets/food.jpg'),
                      Text(elements)
                    ],
                  ),
                ))
            .toList());
  }
}
