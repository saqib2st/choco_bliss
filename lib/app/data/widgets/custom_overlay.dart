import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';

class CustomOverlay {
  static void popup({
    Widget? title,
    required BuildContext context,
    required Widget content,
  }) {
    if (kIsWeb) {
      showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColor.primaryBackgroundColor,
            elevation: 0,
            content: content,
            title: title,
          );
        },
      );
    } else {
      showModalBottomSheet(
        isDismissible: true,
        enableDrag: false,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            children: [
              title ?? const SizedBox(),
              content,
            ],
          ),
        ),
      );
    }
  }
}
