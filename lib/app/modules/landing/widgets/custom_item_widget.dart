import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../data/configs/app_theme.dart';

class CustomItemWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  final bool? isFavorite;
  final Callback? onTap;

  const CustomItemWidget(
      {super.key,
      this.description,
      this.onTap,
      this.image,
      this.isFavorite,
      this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150, // Width of each item
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: AppColor.primaryBackgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.primaryColorLight,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: const Offset(2, 0), // Shadow to the left
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: const Offset(2, 0), // Shadow to the right
                    ),
                  ],
                ),
                child: Image.network(
                  image ?? '',
                  width: 140,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(title ?? '----',
                style: CustomTextStyle.font12R
                    .copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text(description ?? '----',
                style: CustomTextStyle.font12R
                    .copyWith(fontWeight: FontWeight.bold)),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(isFavorite ?? false
                  ? Icons.favorite_outline
                  : Icons.favorite),
            )
          ],
        ),
      ),
    );
  }
}
