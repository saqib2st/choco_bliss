import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/clickable_icon.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';

class ConfirmationWidget extends StatelessWidget {
  final String title, heading, description, buttonName;
  final VoidCallback? onPressed;
  const ConfirmationWidget(
      {super.key,
      required this.title,
      required this.heading,
      required this.description,
      this.onPressed,
      required this.buttonName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.9,
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Center(
              child: Text(
                title,
                style: CustomTextStyle.font20R
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            trailing: ClickableIcon(
                onPressed: () {
                  context.pop();
                },
                iconPath: StaticAssets.crossIcon),
          ),
          Divider(
            color: AppColor.dividerColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(StaticAssets.checkSuccessIcon),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    heading,
                    style: CustomTextStyle.font20R
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.font20R,
                  ),
                  SizedBox(
                    height: size.height * 0.2,
                  ),
                  CustomButton(
                    onPressed: onPressed,
                    buttonName: buttonName,
                    type: ButtonVariant.filled,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
