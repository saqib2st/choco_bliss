part of '../landing_home.dart';

class Desktop extends GetWidget<LandingController> {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScrollController topPicksScrollController = ScrollController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: size.height * 0.9,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: controller.imageListCarousel
                .map((item) => Stack(
                      children: <Widget>[
                        CachedNetworkImage(
                          imageUrl: item,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: size.height * 0.9,
                          placeholder: (context, item)=>Image.asset(StaticAssets.placeHolder,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: size.height * 0.9),
                          errorWidget: (context, item,_)=>Image.asset(StaticAssets.placeHolder,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: size.height * 0.9),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: Container(
                            color: AppColor.secondaryColor,
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Slide ${controller.imageListCarousel.indexOf(item) + 1}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Top Picks',
                textAlign: TextAlign.center,
                style: CustomTextStyle.font45M.copyWith(
                    color: AppColor.primaryColorDark,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            height: 230,
            width: size.width,
            decoration: BoxDecoration(
              color: AppColor.secondaryVeryDark,
            ),
            child: Stack(
              children: [
                ScrollConfiguration(
                  behavior: const MaterialScrollBehavior().copyWith(
                    dragDevices: {PointerDeviceKind.mouse},
                  ),
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    controller: topPicksScrollController,
                    itemCount: controller.itemsList.length,
                    itemBuilder: (context, columnIndex) {
                      Item item = controller.itemsList[columnIndex];
                      return CustomItemWidget(
                        onTap: () {
                          context.go(AppRoutesConst.itemDetails);
                          controller.title = 'Menu';
                          controller.selectedItem.value = item;
                        },
                        image:item.imageUrl,
                        title: item.name,
                        isFavorite: item.isFavourite,
                        price: item.price.toString(),
                        description: item.shortDescription,
                      );
                    },
                  ),
                ),
                Container(
                  height: 230,
                  width: 120,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        AppColor.secondaryVeryDark,
                        AppColor.secondaryVeryDark.withOpacity(0.5),
                        Colors.transparent
                      ],
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Calculate the new scroll extent
                      double extent = topPicksScrollController.position.pixels -
                          500.0.w; // Scroll by 200 pixels or item width
                      double minExtent =
                          topPicksScrollController.position.minScrollExtent;

                      // Make sure we don't exceed the maximum extent
                      if (extent > minExtent) {
                        extent = minExtent;
                      }

                      // Animate the scroll to the new position
                      topPicksScrollController.animateTo(
                        extent,
                        curve: Curves.ease,
                        duration: const Duration(milliseconds: 500),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 230,
                    width: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [
                          AppColor.secondaryVeryDark,
                          AppColor.secondaryVeryDark.withOpacity(0.5),
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        // Calculate the new scroll extent
                        double extent =
                            topPicksScrollController.position.pixels +
                                500.0.w; // Scroll by 200 pixels or item width
                        double maxExtent =
                            topPicksScrollController.position.maxScrollExtent;

                        // Make sure we don't exceed the maximum extent
                        if (extent > maxExtent) {
                          extent = maxExtent;
                        }

                        // Animate the scroll to the new position
                        topPicksScrollController.animateTo(
                          extent,
                          curve: Curves.ease,
                          duration: const Duration(milliseconds: 500),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColor.rangeselectionColor,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              children: [
                Text(
                  'New menu items',
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.font45M.copyWith(
                    color: AppColor.primaryColorDark,
                    fontWeight: FontWeight.w900,
                    fontSize: 60.w,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 20),
                Divider(
                  color: AppColor.primaryColorDark,
                  thickness: 5,
                  indent: 2,
                  endIndent: 2,
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 30.w,
                  children: List.generate(controller.categoriesList.length, (index) {
                    Category category = controller.categoriesList[index];
                    return GestureDetector(
                      onTap: () {
                        controller.selectedCategory = category;
                        controller.fetchSelectedItems(category.name);
                        context.go(AppRoutesConst.subMenu);
                        controller.title = 'Menu';
                      },
                      child: SizedBox(
                        height: 450,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:300,
                                width: 300,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: AppColor.primaryColorLight,
                                      radius: 130,
                                    ),
                                    CachedNetworkImage(
                                      imageUrl: category.imageURL,
                                      fit: BoxFit.fill,
                                      width: 300,
                                      height: 300,
                                      placeholder: (context, item)=>Padding(
                                        padding: const EdgeInsets.only(left: 30,top: 30),
                                        child: Image.asset(StaticAssets.placeHolder2,
                                            fit: BoxFit.cover,
                                            ),
                                      ),
                                      errorWidget: (context, item,_)=>Padding(
                                        padding: const EdgeInsets.only(left: 30,top: 30),
                                        child: Image.asset(StaticAssets.placeHolder2,
                                            fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                category.name.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.font22R.copyWith(
                                  color: AppColor.textColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 350,
                                  child: Text(
                                    category.description,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyle.font14R.copyWith(
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w200,
                                      height: 1.1
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 7,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 70.h),
                CustomButton(
                  isHover: true,
                  buttonName: 'Download Menu',
                  type: ButtonVariant.filled,
                  width: size.width * 0.3,
                  onPressed: (){
                    controller.downloadPdf();
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 120),
          Center(
            child: Text(
              'Choco Bliss – The King of Desserts',
              textAlign: TextAlign.center,
              style: CustomTextStyle.font45M.copyWith(
                color: AppColor.primaryColorDark,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: Text(
                'Are you craving Choco-Bliss? We don\'t blame you one bit! Indulge your sweet tooth and find out where you can get your next decadent dessert fix.\n Experience the ultimate bliss delivered right to your door, making your binge-watching sessions even sweeter.\n Whether it\'s a midday treat or a late-night indulgence, we have you covered. Discover our locations and let us bring dessert joy to your day.\n How about dessert for lunch today? Tempted yet? Come find us and satisfy your cravings!',
                textAlign: TextAlign.center,
                style: CustomTextStyle.font16R,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomButton(
                  isHover: true,
                  buttonName: 'Find Us',
                  type: ButtonVariant.filled,
                  onPressed: () {
                    context.go(AppRoutesConst.landingContacts);
                    controller.title = 'Contact';
                  },
                ),
                const SizedBox(width: 20),
                CustomButton(
                  isHover: true,
                  buttonName: 'Order Online',
                  width: 180,
                  onPressed: () {
                    context.go(AppRoutesConst.landingFeatures);
                    controller.title = 'Menu';
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          const Footer(),
        ],
      ),
    );
  }
}
