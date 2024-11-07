import 'package:cached_network_image/cached_network_image.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../data/configs/app_theme.dart';

class CustomItemWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? price;
  final String? description;
  final bool? isFavorite;
  final Callback? onTap;

  const CustomItemWidget(
      {super.key,
      this.description,
      this.onTap,
      this.image,
      this.isFavorite,this.price,
      this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150, // Width of each item
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: AppColor.primaryBackgroundColor,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColor.primaryColorLight,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: const Offset(2, 0), // Shadow to the left
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 7,
                      blurRadius: 10,
                      offset: const Offset(2, 0), // Shadow to the right
                    ),
                  ],
                ),
                child: CachedNetworkImage(
                  imageUrl: image ?? "",
                  fit: BoxFit.fill,
                  width: 140,
                  height: 90,
                  placeholder: (context, item)=>Image.asset(StaticAssets.placeHolder,
                      fit: BoxFit.fill,
                    width: 140,
                    height: 90),
                  errorWidget: (context, item,_)=>Image.asset(StaticAssets.placeHolder,
                      fit: BoxFit.fill,
                    width: 140,
                    height: 90),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(title ?? '----',
                style: CustomTextStyle.font12R
                    .copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text("Price: $price \$" ,
                style: CustomTextStyle.font12R
                    .copyWith(fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            Text(description ?? '----',
                style: CustomTextStyle.font12R
                    .copyWith(fontWeight: FontWeight.normal,
                height: 1
                ),
              maxLines: 3,
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(isFavorite ?? false
                  ? Icons.favorite_outline
                  : Icons.favorite),
            )
          ],
        ),
      ),
    );
  }
}
