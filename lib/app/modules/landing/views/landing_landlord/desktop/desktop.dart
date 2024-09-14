part of '../landing_landlord.dart';

class Desktop extends GetWidget<LandingController> {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            StaticAssets.bannerImage,
            fit: BoxFit.fill,
          ),
          StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: [
              ...controller.carouselImagesList
                  .asMap()
                  .entries
                  .map((element) => CachedNetworkImage(imageUrl: element.value))
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
