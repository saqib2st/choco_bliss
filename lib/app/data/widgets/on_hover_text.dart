import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

class OnHoverText extends StatefulWidget {
  final Color? textColor, hoverColor;
  final String title;
  final bool isSelected;

  const OnHoverText(
      {super.key,
      this.textColor,
      this.isSelected = false,
      this.hoverColor,
      required this.title});

  @override
  State<OnHoverText> createState() => _OnHoverTextState();
}

class _OnHoverTextState extends State<OnHoverText> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        onEntered(true);
      },
      onExit: (event) {
        onEntered(false);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Text(
          widget.title,
          style: CustomTextStyle.font14R.copyWith(
              color: widget.isSelected
                  ? AppColor.primaryColorDark
                  : isHovered
                      ? AppColor.primaryColorLight
                      : null,
              fontSize: 18,
              fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
