import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';

part 'desktop/desktop.dart';

class LandingLandlord extends GetView<LandingController> {
  const LandingLandlord({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Desktop(), tablet: Desktop(), desktop: Desktop());
  }
}
