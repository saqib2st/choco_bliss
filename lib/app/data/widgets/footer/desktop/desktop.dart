part of '../footer.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double leftPadding = size.width * 0.142;
    return Container(
      color: Colors.blueGrey.withOpacity(0.3),
      padding: EdgeInsets.symmetric(
              vertical: 30,
              horizontal: size.width > 992
                  ? leftPadding / 1.42
                  : size.width > 762
                      ? leftPadding / 3
                      : leftPadding / 4)
          .copyWith(
        bottom: 20,
        right: leftPadding / 2,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      StaticAssets.webLogo,
                      width: 80,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ChocoBliss is an innovative and delightful dessert shop and ice cream parlor. We offer real-time updates, secure payments, and streamlined communication for a seamless experience. Indulge in our variety of creamy ice creams and decadent chocolates. Each treat is crafted to bring bliss in every bite.',
                      style: CustomTextStyle.font16R.copyWith(
                        color: AppColor.textColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Info',
                      style: CustomTextStyle.font22R
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Home'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('About us'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Contact'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Download App')
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Features',
                      style: CustomTextStyle.font22R
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('Menu'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Gallery'),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Download',
                      style: CustomTextStyle.font22R
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text('App for IOS'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('App for Android'),
                    const SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            color: AppColor.dividerColor,
            thickness: 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Develop By:\nDevsColon 2024. All rights reserved.'),
              Row(
                children: [
                  ...[
                    StaticAssets.fbIcon,
                    StaticAssets.instagramIcon,
                    StaticAssets.linkedIn
                  ].map(
                    (e) => RowContainer(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      borderColor: AppColor.hintTextColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      widgetList: [
                        SvgPicture.asset(
                          e,
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
