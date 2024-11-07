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
