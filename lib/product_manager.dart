import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct){
    print('[ProductManager Widget] contstructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState(){
    print('[ProductManager Widget] initState()');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget){
    print('[ProductManager Widget] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  Widget build(BuildContext context){
    print('[ProductManager Widget] build()');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
              //print(_products);
            });
          },
          child: Text('Add Product'),
        ),
      ),
      Products(_products)
    ]);
  }
}