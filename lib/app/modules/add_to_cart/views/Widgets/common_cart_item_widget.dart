import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/clickable_icon.dart';
import 'package:choco_bliss/app/modules/landing/views/menu/itemDetials/desktop.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final int quantity;
  final double price;
  final VoidCallback? onPressRemove;
  final VoidCallback onAddItem;
  final VoidCallback onPressRemoveItem;

  const CartItem({super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.quantity,
    required this.price,
     this.onPressRemove, required this.onAddItem, required this.onPressRemoveItem
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
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
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(description, style: TextStyle(color: Colors.grey[600])),
                Row(
                  children: [
                    const Text('Quantity:', style: TextStyle(fontSize: 16)),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: onPressRemoveItem,
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            shape: BoxShape.circle
                          ),
                          child : Icon(Icons.remove,
                            size: 30.w,
                          )),
                    ),
                    const SizedBox(width: 12),
                    Text('$quantity', style: const TextStyle(fontSize: 16)),
                    const SizedBox(width: 12),
                    InkWell(
                      onTap: onAddItem,
                      child: Container(
                          height: 45.w,
                          width: 45.w,
                          decoration: BoxDecoration(
                              color: AppColor.primaryColor,
                              shape: BoxShape.circle
                          ),
                          alignment: Alignment.center,
                          child : Icon(Icons.add,
                            size: 30.w,
                          ),),
                    )

                  ],
                ),
                Text('\$${price.toStringAsFixed(2)}',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          ClickableIcon(iconPath: StaticAssets.crossIcon,
          onPressed: onPressRemove

          )
        ],
      ),
    );
  }
}
