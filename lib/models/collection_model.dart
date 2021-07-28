import 'package:erz_app/untilities/checkVariable.dart';

// const checkVariable = CheckVariable;
class Collection {
  final int id;
  final String name;
  final String type;
  final String category;
  final Object metadata;
  final String createdDate;
  final String updatedDate;

  Collection({
    required this.id,
    required this.name,
    required this.type,
    required this.metadata,
    this.category = '',
    this.createdDate = '',
    this.updatedDate = '',
  });

  factory Collection.fromJson(Map<String, dynamic> json) {
    var collection = Collection(
      id: checkAndReplaceNull(json['id'], ''),
      name: checkAndReplaceNull(json['name'], ''),
      type: checkAndReplaceNull(json['type'], ''),
      category: checkAndReplaceNull(json['catrgory'], ''),
      metadata: CollectionMetadata.fromJson(json['metadata']),
      createdDate: json['created_date'],
      updatedDate: json['updated_date'],
    );
    return collection;
  }
}

class CollectionMetadata {
  final String description;

  CollectionMetadata({
    this.description = '',
  });

  factory CollectionMetadata.fromJson(Map<String, dynamic> json) {
    return CollectionMetadata(
      description: checkAndReplaceNull(json['description'], ''),
    );
  }
}