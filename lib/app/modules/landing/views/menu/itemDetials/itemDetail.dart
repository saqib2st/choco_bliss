import 'package:choco_bliss/app/modules/landing/views/menu/itemDetials/desktop.dart';
import 'package:choco_bliss/app/modules/landing/views/menu/itemDetials/mobile.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';
import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  const ItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: ItemDetailPageWeb(),
        tablet: Itemdetialpage(),
        desktop: Itemdetialpage());
  }
}
