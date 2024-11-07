
import 'package:choco_bliss/app/data/models/items.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Orders {
  final String? id;
  final String name;
  final String email;
  final String address;
  final String phoneNumber;
  final String message;
  final String dateCreation;
  final String orderStatus;
  final double totalPrice;
  final List<Item> items;

  Orders({
    this.id,
    required this.name,
    required this.email,
    required this.address,
    required this.phoneNumber,
    required this.message,
    required this.dateCreation,
    required this.orderStatus,
    required this.totalPrice,
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'address': address,
      'phoneNumber': phoneNumber,
      'message': message,
      'totalPrice': totalPrice,
      'items': items.map((item) => item.toMap()).toList(),
      'timestamp': FieldValue.serverTimestamp(),
    };
  }
}


// import 'package:choco_bliss/app/data/models/items.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class Orders {
//   final String? id; // Consider changing to String if used as document ID
//   final String name;
//   final String email;
//   final String address;
//   final String phoneNumber;
//   final String message;
//   final Timestamp dateCreation; // Prefer Timestamp for Firestore dates
//   final String orderStatus;
//   final double totalPrice;
//   final List<Item> items;
//
//   Orders({
//     this.id,
//     required this.name,
//     required this.email,
//     required this.address,
//     required this.phoneNumber,
//     required this.message,
//     required this.dateCreation,
//     required this.orderStatus,
//     required this.totalPrice,
//     required this.items,
//   });
//
//   Map<String, dynamic> toMap() {
//     return {
//       'name': name,
//       'email': email,
//       'address': address,
//       'phoneNumber': phoneNumber,
//       'message': message,
//       'dateCreation': dateCreation, // Storing as Timestamp
//       'orderStatus': orderStatus,
//       'totalPrice': totalPrice,
//       'items': items.map((item) => item.toMap()).toList(),
//       'timestamp': FieldValue.serverTimestamp(),
//     };
//   }
//
// // Optionally, you could include a fromMap factory method for easier deserialization
// // factory Orders.fromMap(DocumentSnapshot doc) {
// //
// //   Map<String, dynamic> map = doc.data() as Map<String, dynamic>;
// //
// //   return Orders(
// //     id: doc.id, // Handle id if not provided
// //     name: map['name'] ?? '',
// //     email: map['email'] ?? '',
// //     address: map['address'] ?? '',
// //     phoneNumber: map['phoneNumber'] ?? '',
// //     message: map['message'] ?? '',
// //     dateCreation: map['dateCreation'] ?? Timestamp.now(),
// //     orderStatus: map['orderStatus'] ?? 'Pending',
// //     totalPrice: map['totalPrice']?.toDouble() ?? 0.0,
// //     items: (map['items'] as List<dynamic>?)
// //         ?.map((item) => Item.fromFirestore(item))
// //         .toList() ?? [],
// //   );
// // }
// }
