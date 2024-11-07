import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: AppColor.secondaryColor,
      strokeCap: StrokeCap.round,
    );
  }
}
