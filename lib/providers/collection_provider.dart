import 'package:erz_app/services/collection_service.dart';
import 'package:flutter/material.dart';

class CollectionProvider extends ChangeNotifier {
  int userId;

  CollectionProvider({this.userId = 0});

  Future<List> getCollectionData(c) async {
    List collectionList = await fetchCollection();
    return collectionList;
  }

  increment() {
    userId++;
    notifyListeners();
  }
}
