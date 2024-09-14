import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:flutter/material.dart';

class BillSummary extends StatelessWidget {
  final double subtotal;
  final double vat;
  final double platformFee;
  final double totalPrice;

  BillSummary({
    required this.subtotal,
    required this.vat,
    required this.platformFee,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.hintTextColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(7)),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bill Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text('Subtotal: \$${subtotal.toStringAsFixed(2)}'),
          Text('VAT (5%): \$${vat.toStringAsFixed(2)}'),
          Text('Platform Fee: \$${platformFee.toStringAsFixed(2)}'),
          Divider(),
          Text('Total: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text('Confirm Order'),
          ),
        ],
      ),
    );
  }
}
