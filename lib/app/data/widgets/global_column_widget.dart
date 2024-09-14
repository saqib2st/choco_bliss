import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

class GlobalColumnWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double? iconHeight;
  final double? iconWidth;
  final Color? iconColor;

  const GlobalColumnWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      this.iconHeight,
      this.iconWidth,
      this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          height: iconHeight ?? 50,
          width: iconWidth ?? 50,
          colorFilter: ColorFilter.mode(
              iconColor ?? AppColor.secondaryColor, BlendMode.srcIn),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            title,
            style: CustomTextStyle.font20R.copyWith(
              color: AppColor.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(description,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: CustomTextStyle.font18R.copyWith(
              color: AppColor.textColor,
            )),
      ],
    );
  }
}
