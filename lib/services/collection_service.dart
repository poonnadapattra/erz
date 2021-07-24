import 'dart:convert';
import 'package:http/http.dart' as http;

class Album {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

Future<List> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

  if (response.statusCode == 200) {
    Iterable albumList = json.decode(response.body);
    List<Album> albums = List<Album>.from(albumList.map((model)=> Album.fromJson(model)));

    return albums;
  } else {
    throw Exception('Failed to load album');
  }
}