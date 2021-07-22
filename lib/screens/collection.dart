import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  CollectionPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('COLLECTION PAGE1', style: TextStyle(fontSize: 40)),
          ]
        )
      ),
    );
  }
}