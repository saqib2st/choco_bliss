import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

class ClickableText extends StatelessWidget {
  final void Function()? onPressed;
  final String name;
  final bool underline;
  final TextStyle? style;

  const ClickableText(
      {super.key,
      this.onPressed,
      required this.name,
      this.underline = false,
      this.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        name,
        style: style?.copyWith(
                decoration: underline ? TextDecoration.underline : null) ??
            CustomTextStyle.font14R.copyWith(
                decoration: underline ? TextDecoration.underline : null),
      ),
    );
  }
}
