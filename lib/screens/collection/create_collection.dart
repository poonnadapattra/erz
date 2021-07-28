import 'package:flutter/material.dart';

class CreateCollectionPage extends StatefulWidget {

  CreateCollectionPage({Key? key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _CreateCollectionPageState createState() => _CreateCollectionPageState();

}

class _CreateCollectionPageState extends State<CreateCollectionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create collection')),
    );
  }
}