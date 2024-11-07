import 'package:choco_bliss/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:choco_bliss/app/modules/add_to_cart/views/Widgets/complete_order_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddOrderDialog extends GetView<AddToCartController> {
  @override
  Widget build(BuildContext context) {
    // Initialize controller

    return LayoutBuilder(
      builder: (context, constraints) {
        double dialogWidth = constraints.maxWidth < 600 ? constraints.maxWidth * 0.9 : 600;

        return Dialog(
          child: Container(
            width: dialogWidth,
            padding: const EdgeInsets.all(20),
            child: const AddOrderForm(),
          ),
        );
      },
    );
  }
}
