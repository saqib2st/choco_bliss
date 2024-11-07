import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';

class TextTabs extends StatelessWidget {
  final Color color;
  final TextStyle titleStyle;
  final String title;
  final VoidCallback? onPressed;
  final double? height, width, radius;
  final EdgeInsets? padding;
  final Widget? icon;
  final bool trailing;
  final BoxDecoration? boxDecoration;
  final EdgeInsets? margin;
  const TextTabs(
      {super.key,
      required this.color,
      required this.title,
      this.onPressed,
      this.height,
      this.width,
      this.trailing = true,
      this.boxDecoration,
      required this.titleStyle,
      this.icon,
      this.margin,
      this.padding,
      this.radius});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: margin ?? const EdgeInsets.all(5),
        height: height,
        width: width,
        decoration: boxDecoration ??
            BoxDecoration(
              border: Border.all(color: AppColor.borderdisable),
              color: color,
              borderRadius: BorderRadius.circular(radius ?? 5),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!trailing)
              if (icon != null)
                Row(
                  children: [
                    icon!,
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
            Text(
              title,
              style: titleStyle,
            ),
            if (trailing)
              if (icon != null)
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    icon!,
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
