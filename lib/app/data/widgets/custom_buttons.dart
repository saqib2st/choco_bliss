import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

enum ButtonVariant {
  filled,
  bordered,
}

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.buttonName,
      this.height,
      this.width,
      this.type,
      this.onPressed,
      this.color,
      this.borderRadius,
      this.textColor,
      this.isbold = false,
      this.elevation = 0,
      this.backgroundColor,
      this.borderWidth,
      this.icon,
      this.isHover = false})
      : isFilled = type == ButtonVariant.filled;

  final ButtonVariant? type;
  final VoidCallback? onPressed;
  final Color? color, textColor, backgroundColor;
  final String buttonName;
  final double elevation;
  final double? height, width, borderRadius, borderWidth;
  final bool isFilled, isbold, isHover;
  final Widget? icon;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (event) {
          if (widget.isHover) {
            onEntered(true);
          } else {
            onEntered(false);
          }
        },
        onExit: (event) {
          onEntered(false);
        },
        child: Container(
          height: widget.height ?? 40,
          width: widget.width ?? 150,
          decoration: BoxDecoration(
              color: isHovered
                  ? AppColor.secondaryColor
                  : widget.isFilled
                      ? widget.color ?? AppColor.primaryColor
                      : widget.backgroundColor ??
                          AppColor.primaryBackgroundColor,
              borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
              border: Border.all(
                width: widget.isFilled ? 0 : widget.borderWidth ?? 1.5,
                color: isHovered
                    ? AppColor.secondaryColor
                    : widget.color ?? AppColor.primaryColor,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: (1 * widget.elevation),
                  blurRadius: (3 * widget.elevation),
                ),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (widget.icon != null) widget.icon!,
              Text(
                widget.buttonName,
                textAlign: TextAlign.center,
                style: CustomTextStyle.font14R.copyWith(
                  fontWeight: widget.isbold ? FontWeight.bold : FontWeight.w500,
                  color: isHovered
                      ? Colors.white
                      : widget.isFilled
                          ? widget.textColor ?? AppColor.primaryBackgroundColor
                          : widget.color ?? AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
