import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/widgets/widget_container.dart';

class ColumnWidget extends StatefulWidget {
  final String description, title, icon;
  final String? icon2;
  final bool isHover;
  final double? iconHeight, iconwidth, width, height;
  final TextAlign? textAlign;
  final Color? textColor, iconbgColor, iconColor, hoverColor;
  final CrossAxisAlignment? crossAxisAlignment;

  const ColumnWidget(
      {super.key,
      this.iconHeight,
      this.iconwidth,
      this.textAlign,
      this.crossAxisAlignment,
      this.textColor,
      this.iconbgColor,
      this.iconColor,
      required this.icon,
      required this.title,
      required this.description,
      this.hoverColor,
      this.icon2,
      this.isHover = true,
      this.width,
      this.height});

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return MouseRegion(
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
      child: SizedBox(
        width: widget.width ?? 258.w,
        height: widget.height ?? 260,
        child: Column(
          crossAxisAlignment:
              widget.crossAxisAlignment ?? CrossAxisAlignment.center,
          children: [
            WidgetContainer(
                borderRadius: BorderRadius.circular(15),
                color: isHovered
                    ? widget.hoverColor ?? const Color(0xff43B590)
                    : widget.iconbgColor,
                height: widget.iconHeight ?? 80,
                width: widget.iconwidth ?? 80,
                child: SvgPicture.asset(
                  isHovered ? widget.icon2 ?? widget.icon : widget.icon,
                  fit: BoxFit.scaleDown,
                  height: 32,
                  width: 38,
                )),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.title,
              textAlign: widget.textAlign ?? TextAlign.center,
              style: CustomTextStyle.font20R.copyWith(
                  fontWeight: FontWeight.bold,
                  color: widget.textColor ?? Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                widget.description,
                textAlign: widget.textAlign ?? TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyle.font16R
                    .copyWith(color: widget.textColor ?? Colors.white),
              ),
            ),
          ],
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
