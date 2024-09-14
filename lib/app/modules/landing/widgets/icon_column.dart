import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';

class IconColumn extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const IconColumn(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: TextStyle(
            fontSize: 18,
            color: AppColor.textGrey,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
