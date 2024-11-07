import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/widgets/global_column_widget.dart';

class ProfileCard extends StatelessWidget {
  final String iconPath;
  final String title;
  final String description;
  final Color color;
  final VoidCallback? onPressed;

  const ProfileCard(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.description,
      required this.color,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: 300,
          width: 400,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: AppColor.hintTextColor,
            ),
          ),
          child: GlobalColumnWidget(
              imagePath: iconPath, title: title, description: description)),
    );
  }
}
