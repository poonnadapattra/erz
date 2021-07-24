import 'package:erz_app/providers/collection_provider.dart';
import 'package:erz_app/untilities/rotate.dart';
import 'package:erz_app/widgets/cards/collection_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CollectionPage extends StatefulWidget {
  CollectionPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _CollectionPageState createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {

  @override
  Widget build(BuildContext context) {
    CollectionProvider collectionProvider = Provider.of<CollectionProvider>(context);

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
        child: Consumer<CollectionProvider>(
          builder: (context, data, child) {
            return FutureBuilder<List>(
              future: data.getCollectionData(1),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.map((item) => new CollectionCard()).toList()
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }

                // By default, show a loading spinner.
                return const CircularProgressIndicator();
              },
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          collectionProvider.increment();
          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(content: Text('This is a snackbar'))
          // );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}