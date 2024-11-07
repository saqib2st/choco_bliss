import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/row_container.dart';
import 'package:choco_bliss/app/responsive/responsive.dart';

part 'desktop/desktop.dart';
part 'tablet/tablet.dart';
part 'mobile/mobile.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: Mobile(), tablet: Tablet(), desktop: Desktop());
  }
}
