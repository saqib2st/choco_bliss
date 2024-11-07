import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:choco_bliss/app/data/models/catogery.dart';
import 'package:choco_bliss/app/data/models/items.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/modules/landing/widgets/custom_item_widget.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';
import 'package:go_router/go_router.dart';

part 'desktop/desktop.dart';
part 'mobile/mobile.dart';
part 'tablet/tablet.dart';

class LandingHome extends GetView<LandingController> {
  const LandingHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Tablet(), tablet: Tablet(), desktop: Desktop());
  }
}
