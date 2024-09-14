import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/modules/landing/views/menu/itemDetials/desktop.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int quantity;
  final double price;

  const CartItem({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.quantity,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: AppColor.hintTextColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(11)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Item Image
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColorDark, width: 3),
                borderRadius: BorderRadius.circular(6)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                imageUrl,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Item Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(description, style: TextStyle(color: Colors.grey[600])),
                Text('Quantity: $quantity', style: TextStyle(fontSize: 16)),
                Text('\$${price.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
