import 'package:choco_bliss/app/modules/add_to_cart/views/Widgets/bill_summary_widget.dart';
import 'package:choco_bliss/app/modules/add_to_cart/views/Widgets/common_cart_item_widget.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_to_cart_controller.dart';

part 'Desktop/desktop.dart';
part 'Mobile/mobile.dart';
part 'Tablet/tablet.dart';

class AddToCartView extends GetView<AddToCartController> {
  const AddToCartView({super.key});
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Mobile(),
      tablet: Tablet(),
      desktop: Desktop(),
    );
  }
}
