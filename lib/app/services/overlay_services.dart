import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:choco_bliss/app/data/widgets/custom_loader.dart';

class OverlayServices extends GetxService {
  static OverlayServices get to => Get.find();

  void showSnackBar({required Color color, required String message}) {
    Get.showSnackbar(GetSnackBar(
      borderRadius: 10,
      maxWidth: Get.width * 0.9,
      duration: const Duration(seconds: 2),
      message: message,
      backgroundColor: color,
    ));
  }

  var overlayEntry = OverlayEntry(
    builder: (_) => const Center(
      child: CustomLoader(),
    ),
  );

  void showOverlay(BuildContext context) {
    Overlay.of(context).insert(overlayEntry);
  }

  void hideOverlay() {
    overlayEntry.remove();
  }
}
