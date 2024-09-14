import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/widgets/footer/footer.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';

part 'desktop/desktop.dart';
part 'tablet/tablet.dart';

class LandingAboutUs extends GetView<LandingController> {
  const LandingAboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Tablet(), tablet: Tablet(), desktop: Desktop());
  }
}
