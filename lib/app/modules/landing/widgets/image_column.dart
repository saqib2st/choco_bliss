import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

class ImageColumn extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String description;
  final String descriptionTwo;

  const ImageColumn({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.description,
    required this.descriptionTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 490,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15.0),
        ),
        border: Border.all(
          width: 1,
          color: AppColor.borderdisableXLight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              imageAsset,
              height: 224,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.font20R.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyle.font16R.copyWith(height: 1.6),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  descriptionTwo,
                  maxLines: 2,
                  style: CustomTextStyle.font16R.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
