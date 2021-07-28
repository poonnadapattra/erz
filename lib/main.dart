import 'package:erz_app/screens/collection/create_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:erz_app/layout1.dart';
import 'package:erz_app/providers/collection_provider.dart';
import 'package:erz_app/themes/theme1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CollectionProvider())
      ], 
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryTextTheme: TextTheme(),
          textTheme: Theme1().textTheme
        ),
        initialRoute: "/",
        routes: {
          '/': (context) => Layout1(title: 'Flutter Demo Home Page'),
          '/collection/create': (context) => CreateCollectionPage(),
        },
      ),
    );
  }
}
