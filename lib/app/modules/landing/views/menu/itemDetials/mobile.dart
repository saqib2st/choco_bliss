import 'package:cached_network_image/cached_network_image.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:choco_bliss/app/modules/landing/widgets/custom_item_widget.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:go_router/go_router.dart';

class ItemDetailPageWeb extends StatelessWidget {
  const ItemDetailPageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.primaryColorDark,
                width: 4.w,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.w),
                bottomRight: Radius.circular(60.w),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60.w),
                bottomRight: Radius.circular(60.w),
              ),
              child: CachedNetworkImage(
                imageUrl:
                    'https://media.istockphoto.com/id/2153851108/photo/assorted-ice-cream-of-different-flavors-in-waffle-cones.webp?s=612x612&w=is&k=20&c=pL7Z9JL0Qan-fV0alfyZbrmalya7LBAUSQ0dzDtgU54=',
                height: size.height * 0.5,
                width: size.width,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Title Headline',
                  style: CustomTextStyle.font45M.copyWith(
                    color: Colors.black87,
                    fontWeight: FontWeight.w900,
                    fontSize: 26,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                // Price

                const SizedBox(height: 10),

                // Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '13.2\$',
                      style: CustomTextStyle.font45M.copyWith(
                        color: AppColor.appDarkGrey,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 80.w,
                    ),
                    Text(
                      '5.5 Rating',
                      style: CustomTextStyle.font45M.copyWith(
                        color: Colors.black45,
                        fontWeight: FontWeight.w900,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Add to Cart Button
                CustomButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 45.h,
                    color: AppColor.primaryBackgroundColor,
                  ),
                  width: 160,
                  isHover: true,
                  isbold: true,
                  buttonName: 'Add to Cart',
                  type: ButtonVariant.filled,
                ),
                const SizedBox(height: 20),

                // Description
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                  style: CustomTextStyle.font45M.copyWith(
                    color: AppColor.appDarkGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 20),

                // How do you feel about this product?
                Text(
                  'What\'s your feeling about this product?',
                  style: CustomTextStyle.font45M.copyWith(
                    fontFamily: 'DMSans',
                    color: AppColor.darkGreen,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),

                // Rating Bar
                Center(
                  child: RatingBar.builder(
                    initialRating: 3,
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
                ),
                const SizedBox(height: 30),

                // Related Items (2x2 Wrap)
                Text(
                  'Related Items',
                  style: CustomTextStyle.font45M.copyWith(
                      color: AppColor.primaryColorDark,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          // Wrap for related items
          Container(
            color: AppColor.secondaryVeryDark,
            width: size.width,
            child: Wrap(
              runAlignment: WrapAlignment.spaceEvenly,
              alignment: WrapAlignment.spaceEvenly,
              children: List.generate(
                4,
                (index) => SizedBox(
                  width: size.width * 0.5,
                  child: CustomItemWidget(
                    onTap: () {
                      context.go(AppRoutesConst.itemDetails);
                    },
                    image:
                        'https://media.istockphoto.com/id/2153851108/photo/assorted-ice-cream-of-different-flavors-in-waffle-cones.webp?s=612x612&w=is&k=20&c=pL7Z9JL0Qan-fV0alfyZbrmalya7LBAUSQ0dzDtgU54=',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
