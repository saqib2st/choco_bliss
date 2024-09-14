import 'package:flutter/material.dart';

class RowContainer extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color, borderColor;
  final double? height, width;
  final List<Widget> widgetList;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding, margin;
  final MainAxisAlignment? mainAxisAlignment;
  const RowContainer(
      {super.key,
      this.color,
      required this.widgetList,
      this.height,
      this.width,
      this.borderRadius,
      this.onPressed,
      this.padding,
      this.mainAxisAlignment,
      this.margin,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        margin: margin,
        padding:
            padding ?? const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(7),
          color: color ?? Colors.white,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            children: widgetList),
      ),
    );
  }
}
