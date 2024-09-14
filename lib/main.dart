import 'package:choco_bliss/app/routes/my_app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  runApp(
    GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Choco Bliss",
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    ),
  );
}
