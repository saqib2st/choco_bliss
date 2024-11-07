import 'package:choco_bliss/app/data/configs/sizing.dart';
import 'package:choco_bliss/app/data/configs/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';
import 'package:choco_bliss/app/data/utils/static_assets.dart';
import 'package:choco_bliss/app/data/widgets/custom_buttons.dart';
import 'package:choco_bliss/app/data/widgets/on_hover_text.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';
import 'package:flutter/foundation.dart';

class LandingView extends StatefulWidget {
  final Widget child;
  const LandingView({super.key, required this.child});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  LandingController controller =
      Get.put<LandingController>(LandingController());

  Future<int> currentIndexByUrl() async {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/${AppRoutesConst.landingHome}')) {
      controller.title = 'home';
      return 0;
    }

    if (location.startsWith('/${AppRoutesConst.landingFeatures}')) {
      controller.title = 'Menu';
      return 1;
    }
    if (location.startsWith('/${AppRoutesConst.landingLandlord}')) {
      controller.title = 'Gallery';
      return 2;
    }
    if (location.startsWith('/${AppRoutesConst.landingAboutUs}')) {
      controller.title = 'About Us';
      return 3;
    }
    if (location.startsWith('/${AppRoutesConst.landingContacts}')) {
      controller.title = 'Contact';
      return 4;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: kIsWeb && size.width < 992
          ? Drawer(
              width: size.width > 786 ? 400 : 300,
              child: Padding(
                padding: const EdgeInsets.all(24.5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              //Todo
                              StaticAssets.webLogo,
                              width: 80,
                            ),
                            GestureDetector(
                              onTap: () {
                                context.pop();
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0xfff25767)
                                        .withOpacity(0.1)),
                                child: SvgPicture.asset(
                                  StaticAssets.crossIcon,
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xfff25767),
                                    BlendMode.srcIn,
                                  ),
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: CustomButton(
                          width:size.width*0.7,
                          height: 70.h,
                          onPressed: () {
                            context.go(AppRoutesConst.addToCart);
                          },
                          icon: Icon(
                            Icons.shopping_cart,
                            size: 50.h,
                          ),
                          buttonName: 'My Cart',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...[
                        'Home',
                        'Menu',
                        'Gallery',
                        'About Us',
                        'Contact Us',
                      ].asMap().entries.map((e) => GestureDetector(
                            onTap: () async {
                              controller.title = e.value;
                              controller.selectedIndex = e.key;
                              if (controller.selectedIndex == 0) {
                                await controller.getImages('slider');
                                if (context.mounted) {
                                  context.go(AppRoutesConst.landingHome);
                                }
                              } else if (controller.selectedIndex == 1) {
                                context.go(AppRoutesConst.landingFeatures);
                              } else if (controller.selectedIndex == 2) {
                                await controller.getImages('gallery');
                                if (context.mounted) {
                                  context.go(AppRoutesConst.landingLandlord);
                                }
                              } else if (controller.selectedIndex == 3) {
                                context.go(AppRoutesConst.landingAboutUs);
                              } else if (controller.selectedIndex == 4) {
                                context.go(AppRoutesConst.landingContacts);
                              } else if (controller.selectedIndex == 5) {
                                context.go(AppRoutesConst.downloadApp);
                              }
                              if (context.mounted) {
                                context.pop();
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: OnHoverText(title: e.value),
                            ),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Row(
                          children: [
                            CustomButton(
                              onPressed: () {
                                // context.go(AppRoutesConst.login);
                              },
                              width: 97,
                              height: 44,
                              buttonName: 'IOS App',
                            ),
                            const SizedBox(width: 20),
                            CustomButton(
                              onPressed: () {
                                // context.go(AppRoutesConst.login);
                              },
                              width: 120,
                              height: 44,
                              buttonName: 'Android App',
                              type: ButtonVariant.filled,
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            )
          : null,
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: size.height * 0.1,
        foregroundColor: Colors.black,
        elevation: Get.find<LandingController>().elevation.value,
        scrolledUnderElevation: 10,
        backgroundColor: AppColor.appGrey.withOpacity(0.07),
        title: kIsWeb && size.width > 992
            ? Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.selectedIndex = 0;
                            controller.title = 'Home';
                            context.go(AppRoutesConst.landingHome);
                          },
                          child: Image.asset(
                            //Todo
                            StaticAssets.webLogo,
                            width: 80,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...[
                          'home',
                          'Menu',
                          'Gallery',
                          'About Us',
                          'Contact',
                        ].asMap().entries.map(
                              (e) => GestureDetector(
                                  onTap: () async {
                                    controller.title = e.value;
                                    controller.selectedIndex = e.key;
                                    if (controller.selectedIndex == 0) {
                                      await controller.getImages('slider');
                                      if (context.mounted) {
                                        context.go(AppRoutesConst.landingHome);
                                      }
                                    } else if (controller.selectedIndex == 1) {
                                      context
                                          .go(AppRoutesConst.landingFeatures);
                                    } else if (controller.selectedIndex == 2) {
                                      await controller.getImages('gallery');
                                      if (context.mounted) {
                                        context
                                            .go(AppRoutesConst.landingLandlord);
                                      }
                                    } else if (controller.selectedIndex == 3) {
                                      context.go(AppRoutesConst.landingAboutUs);
                                    } else if (controller.selectedIndex == 4) {
                                      context
                                          .go(AppRoutesConst.landingContacts);
                                    }
                                  },
                                  child: OnHoverText(
                                    title: e.value.capitalizeFirst.toString(),
                                    isSelected: controller.title.isEmpty
                                        ? controller.title == 'Home'
                                        : controller.title == e.value,
                                  )),
                            ),
                        SizedBox(
                          width: size.width > 1130 ? 20 : 10,
                        ),
                        SizedBox(
                          width: size.width > 1130
                              ? size.width * 0.06
                              : size.width * 0.01,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.go(AppRoutesConst.addToCart);
                          },
                          child: Icon(
                            Icons.shopping_cart,
                            size: 50.h,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  SizedBox(width: 10.w),
                  Image.asset(
                    StaticAssets.webLogo,
                    width: 60,
                  ),
                  SizedBox(width: 15.w),
                  Text(
                    controller.title.capitalizeFirst.toString(),
                    style: CustomTextStyle.font22R
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
      ),
      body: widget.child,
    );
  }
}
