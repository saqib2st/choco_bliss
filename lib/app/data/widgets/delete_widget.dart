import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';

class DeleteWidget extends StatelessWidget {
  final String title, descripton;
  final VoidCallback? onPressed;
  const DeleteWidget(
      {super.key,
      required this.title,
      this.onPressed,
      required this.descripton});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delete $title',
                style: CustomTextStyle.font20R.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.cancel_outlined,
                  color: AppColor.primaryColor,
                ),
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ),
          Text(
            'Are you sure you want to Delete "$descripton"',
          ),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                buttonName: 'No',
                type: ButtonVariant.filled,
                onPressed: () {
                  context.pop();
                },
              ),
              SizedBox(
                width: size.width * 0.040,
              ),
              CustomButton(buttonName: 'Yes', onPressed: onPressed),
            ],
          )
        ],
      ),
    );
  }
}
