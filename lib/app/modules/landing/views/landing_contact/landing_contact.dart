import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';

part 'desktop/desktop.dart';

class LandingContacts extends GetView<LandingController> {
  const LandingContacts({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Desktop(), tablet: Desktop(), desktop: Desktop());
  }
}
