import 'package:cached_network_image/cached_network_image.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/models/items.dart';
import 'package:choco_bliss/app/data/utils/app_utils.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:choco_bliss/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/modules/landing/widgets/custom_item_widget.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class Itemdetialpage extends GetView<LandingController> {
  const Itemdetialpage({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController topPicksScrollController = ScrollController();
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Obx(()=>Column(
        children: [
          SizedBox(height: size.height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColor.primaryColorDark,
                      width: 4.w,
                    ),
                    borderRadius: BorderRadius.circular(20.w)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.w),
                  child: CachedNetworkImage(
                      imageUrl:controller.selectedItem.value.imageUrl ?? '',
                      height: size.height * 0.65,
                      width: size.width * 0.3,
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                width: size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.selectedItem.value.name ?? '--',
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.font45M.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                        fontSize: 60.w,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      'Price: ${controller.selectedItem.value.price}\$',
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.font45M.copyWith(
                        color: AppColor.appDarkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 45.w,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30.w,
                        ),
                        Text(
                          controller.selectedItem.value.rating.toString(),
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.font45M.copyWith(
                            color: Colors.black45,
                            fontWeight: FontWeight.w900,
                            fontSize: 20.w,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        size: 45.h,
                        color: AppColor.primaryBackgroundColor,
                      ),
                      width: 280.w,
                      isHover: true,
                      isbold: true,
                      buttonName: 'Add to Cart',
                      type: ButtonVariant.filled,
                      onPressed: () {
                        if(!Get.isRegistered<AddToCartController>()){
                          Get.put<AddToCartController>(AddToCartController());
                        }

                        if(Get.isRegistered<AddToCartController>()){
                          Get.find<AddToCartController>().addCartItem(controller.selectedItem.value);
                        }
                      },
                    ),
                    Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h)
                          .copyWith(top: 22.h),
                      child: Text(
                        controller.selectedItem.value.description ?? '',
                        textAlign: TextAlign.justify,
                        style: CustomTextStyle.font45M.copyWith(
                          color: AppColor.appDarkGrey,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.w,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 10,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'What\'s your Feeling about this product?',
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.font45M.copyWith(
                        fontFamily: 'DMSans',
                        color: AppColor.darkGreen,
                        fontWeight: FontWeight.w800,
                        fontSize: 25.sp,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10.h),
                    Center(
                      child: RatingBar.builder(
                        initialRating: controller.selectedItem.value.rating?? 3,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Icon(
                                Icons.sentiment_very_dissatisfied,
                                color: Colors.red,
                                size: 30.w,
                              );
                            case 1:
                              return Icon(
                                Icons.sentiment_dissatisfied,
                                color: Colors.redAccent,
                                size: 30.w,
                              );
                            case 2:
                              return Icon(
                                Icons.sentiment_neutral,
                                color: Colors.amber,
                                size: 30.w,
                              );
                            case 3:
                              return Icon(
                                Icons.sentiment_satisfied,
                                color: Colors.lightGreen,
                                size: 30.w,
                              );
                            case 4:
                              return Icon(
                                Icons.sentiment_very_satisfied,
                                color: Colors.green,
                                size: 30.w,
                              );
                          }
                          return const SizedBox();
                        },
                        onRatingUpdate: (rating) {
                          if (kDebugMode) {
                            print(rating);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Related Items',
                textAlign: TextAlign.center,
                style: CustomTextStyle.font45M.copyWith(
                    color: AppColor.primaryColorDark,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 230,
            width: size.width,
            decoration: BoxDecoration(
              color: AppColor.secondaryVeryDark,
            ),
            child: Stack(
              children: [
                ScrollConfiguration(
                  behavior: const MaterialScrollBehavior().copyWith(
                    dragDevices: {PointerDeviceKind.mouse},
                  ),
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: topPicksScrollController,
                    itemCount: controller.itemsList.length,
                    itemBuilder: (context, columnIndex) {
                      Item item = controller.itemsList[columnIndex];
                      return CustomItemWidget(
                        onTap: () {
                          context.go(AppRoutesConst.itemDetails);
                          controller.title = 'Menu';
                          controller.selectedItem.value = item;
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
                Container(
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColor.secondaryVeryDark,
                        AppColor.secondaryVeryDark.withOpacity(0.5),
                        Colors.transparent
                      ],
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Calculate the new scroll extent
                      double extent = topPicksScrollController.position.pixels -
                          500.0.w; // Scroll by 200 pixels or item width
                      double minExtent =
                          topPicksScrollController.position.minScrollExtent;

                      // Make sure we don't exceed the maximum extent
                      if (extent > minExtent) {
                        extent = minExtent;
                      }

                      // Animate the scroll to the new position
                      topPicksScrollController.animateTo(
                        extent,
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 230,
                    width: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          AppColor.secondaryVeryDark,
                          AppColor.secondaryVeryDark.withOpacity(0.5),
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Calculate the new scroll extent
                        double extent =
                            topPicksScrollController.position.pixels +
                                500.0.w; // Scroll by 200 pixels or item width
                        double maxExtent =
                            topPicksScrollController.position.maxScrollExtent;

                        // Make sure we don't exceed the maximum extent
                        if (extent > maxExtent) {
                          extent = maxExtent;
                        }

                        // Animate the scroll to the new position
                        topPicksScrollController.animateTo(
                          extent,
                          curve: Curves.ease,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ))
    );
  }
}
