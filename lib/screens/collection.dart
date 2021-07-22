import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollectionPage extends StatefulWidget {
  CollectionPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.only(bottom: 5.0, top: 5.0),
          width: double.infinity,
          height: 60,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter a search term',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(10),
              suffixIcon: Transform.rotate(
                angle: 90 * math.pi /180,
                child: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                  },
                ))),
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text('COLLECTION PAGE1', style: TextStyle(fontSize: 40)),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('This is a snackbar'))
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}