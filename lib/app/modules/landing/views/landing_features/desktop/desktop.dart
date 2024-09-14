part of '../landing_features.dart';

class Desktop extends GetWidget<LandingController> {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColor.rangeselectionColor,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: [
                Text(
                  'Menu',
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
                  children: List.generate(24, (index) {
                    return GestureDetector(
                      onTap: () {
                        context.go(AppRoutesConst.subMenu);
                      },
                      child: SizedBox(
                        height: 450,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.0.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColor.primaryColorLight,
                                    radius: 130,
                                  ),
                                  Image.network(
                                    'https://static.vecteezy.com/system/resources/previews/043/771/525/non_2x/a-close-up-of-three-different-flavored-ice-cream-cones-with-a-variety-of-topping-on-transparent-background-free-png.png',
                                    height: 300,
                                    width: 300,
                                  )
                                ],
                              ),
                              Text(
                                'oreo cinnamon bun'.toUpperCase(),
                                textAlign: TextAlign.center,
                                style: CustomTextStyle.font22R.copyWith(
                                  color: AppColor.textColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: 300,
                                  child: Text(
                                    '12 hot doughnut bites tossed in a cinnamon and sugar blend and paired with a sauce of your choice to share and indulge',
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyle.font18R.copyWith(
                                      color: AppColor.textColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 5,
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
                  isbold: true,
                  buttonName: 'Load more',
                  type: ButtonVariant.filled,
                  width: size.width * 0.3,
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
