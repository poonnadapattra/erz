import 'package:erz_app/untilities/rotate.dart';
import 'package:erz_app/widgets/cards/collection_card.dart';
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
              suffixIcon: Rotate(
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
          children: [1, 2, 3].map((item) => new CollectionCard()).toList()
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