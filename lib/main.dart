import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester1'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          child: RaisedButton(onPressed: () {
            setState(() {
              _products.add('Yay123');
              print(_products);  
            });
            
            //print(_products);
          }, child: Text('Yay')),
        ),
        Column(
            children: _products
                .map((elements) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'),
                          Text(elements)
                        ],
                      ),
                    ))
                .toList())
      ]),
    ));
  }
}
