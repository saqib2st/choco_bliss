part of '../footer.dart';

class Mobile extends StatelessWidget {
  const Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double leftPadding = size.width * 0.142;
    return Container(
      color: Colors.blueGrey.shade400,
      padding: EdgeInsets.symmetric(
              vertical: leftPadding,
              horizontal: size.width > 992
                  ? leftPadding / 1.42
                  : size.width > 762
                      ? leftPadding / 3
                      : leftPadding / 4)
          .copyWith(bottom: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SvgPicture.asset(
                    //   StaticAssets.webLogo,
                    //   width: 200,
                    // ),
                    Image.asset(
                      StaticAssets.webLogo,
                      width: 120,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'ChocoBliss is an innovative and delightful dessert shop and ice cream parlor. We offer real-time updates, secure payments, and streamlined communication for a seamless experience. Indulge in our variety of creamy ice creams and decadent chocolates. Each treat is crafted to bring bliss in every bite.',
                      style: CustomTextStyle.font16R.copyWith(
                        color: AppColor.textColor,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Info',
                          style: CustomTextStyle.font18R
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Features',
                          style: CustomTextStyle.font18R
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
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Download',
                          style: CustomTextStyle.font18R
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
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Divider(color: AppColor.dividerColor),
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
