import 'dart:convert';
import 'package:erz_app/models/collection_model.dart';
import 'package:http/http.dart' as http;

Future<List> fetchCollection() async {
  final response = await http
      .get(Uri.parse('http://localhost:8000/api/v1/collections'));

  if (response.statusCode == 200) {
    Iterable colectionList = json.decode(response.body)['results'];
    List<Collection> collections = List<Collection>.from(colectionList.map((model)=> Collection.fromJson(model)));

    return collections;
  } else {
    throw Exception('Failed to load collection');
  }
}