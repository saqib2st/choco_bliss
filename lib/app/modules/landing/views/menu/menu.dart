import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/models/items.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/modules/landing/widgets/custom_item_widget.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class LandingMenu extends GetView<LandingController> {
  const LandingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColor.rangeselectionColor,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  controller.selectedCategory?.name.toUpperCase() ?? "CATEGORY",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.font45M.copyWith(
                    color: AppColor.primaryColorDark,
                    fontWeight: FontWeight.w900,
                    fontSize: 60.w,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
                Divider(
                  color: AppColor.primaryColorDark,
                  thickness: 5,
                  indent: 2,
                  endIndent: 2,
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 30.w,
                  runSpacing: 20.w,
                  children: List.generate(
                    controller.filteredList.length,
                    (index) {
                      Item item = controller.filteredList[index];
                      return CustomItemWidget(
                        onTap: () {
                          controller.selectedItem.value = item;
                          context.go(AppRoutesConst.itemDetails);
                          controller.title = 'Menu';
                        },
                        image:item.imageUrl,
                        title: item.name,
                        isFavorite: item.isFavourite,
                        price: item.price.toString(),
                        description: item.shortDescription,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
