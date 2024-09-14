import 'package:flutter/material.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';

class RowWidget extends StatelessWidget {
  final String leading;
  final Widget trailing;
  final bool centerAlign;
  const RowWidget(
      {super.key,
      required this.leading,
      required this.trailing,
      this.centerAlign = true});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment:
          centerAlign ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(leading, style: CustomTextStyle.font16R),
        ),
        SizedBox(
          width: width * 0.13,
        ),
        Expanded(child: trailing), // Added by zain for alignment issues
      ],
    );
  }
}
