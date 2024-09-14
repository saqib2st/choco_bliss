import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';

part 'tablet/tablet.dart';
part 'desktop/desktop.dart';
part 'mobile/mobile.dart';

class DownloadApp extends GetView<LandingController> {
  const DownloadApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Tablet(), tablet: Tablet(), desktop: Desktop());
  }
}
