import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:choco_bliss/app/modules/add_to_cart/views/Widgets/addordrDialog.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class BillSummary extends GetView<AddToCartController> {
  final double subtotal;
  final double vat;
  final double platformFee;
  final double totalPrice;
  final bool isShowConfirm;

  const BillSummary({super.key,
    required this.subtotal,
    required this.vat,
    required this.platformFee,
    required this.totalPrice,
    this.isShowConfirm =true
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
          const Text('Bill Summary',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const Divider(),
          Text('Subtotal: \$${subtotal.toStringAsFixed(2)}'),
          Text('VAT (5%): \$${vat.toStringAsFixed(2)}'),
          Text('Platform Fee: \$${platformFee.toStringAsFixed(2)}'),
          const Divider(),
          Text('Total: \$${totalPrice.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          const SizedBox(height: 20),
          if(isShowConfirm)
          ElevatedButton(
            onPressed: () {
                if (controller.cartItems.isNotEmpty) {
                  showDialog(
                      context: context,
                      builder: (context){
                        return AddOrderDialog();
                      });
                }else{
                  Fluttertoast.showToast(
                      msg: "Add items to cart first!",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 3,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 20.0
                  );
                }
            },
            child: const Text('Confirm Order'),
          ),
        ],
      ),
    );
  }
}
