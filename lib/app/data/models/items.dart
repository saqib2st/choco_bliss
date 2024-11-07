import 'package:cloud_firestore/cloud_firestore.dart';

class Item {
  final String id;
  final String name;
  final String price; // Changed from String to double
  final String description;
  final String imageUrl;
  final String category;
  final String shortDescription;
  final double rating;
  final bool isFavourite;
   int quantity;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.shortDescription,
    required this.rating,
    this.isFavourite = false,
    this.quantity = 1,
  });

  factory Item.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return Item(
      id: doc.id,
      name: data['name'] ?? '',
      price: data['price'].toString(),
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      category: data['category'] ?? '',
      shortDescription: data['shortDescription'] ?? '',
      rating: (data['rating'] as num?)?.toDouble() ?? 0.0,
      isFavourite: data['isFavourite'] ?? false,
      quantity: data['quantity'] ?? 1,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
      'category': category,
      'shortDescription': shortDescription,
      'rating': rating,
      'isFavourite': isFavourite,
      'quantity': quantity,
    };
  }
}

