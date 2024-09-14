part of '../download_app.dart';

class Tablet extends StatelessWidget {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: AppColor.darkGreen,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Download Homehunter App for FREE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'The ultimate rental property management app and revolutionize your rental property experience.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColor.textGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 25,
                    runSpacing: 25,
                    children: [
                      Container(
                        height: 460,
                        width: 360,
                        decoration: BoxDecoration(
                          color: AppColor.whiteGrey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            const Text(
                              'Get the app from App Store',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomButton(
                              buttonName: 'Download for iOS',
                              type: ButtonVariant.filled,
                            ),
                            Image.asset(
                              StaticAssets.landingIosImage,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 460,
                        width: 360,
                        decoration: BoxDecoration(
                          color: AppColor.whiteGrey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            const Text(
                              'Get the app from Google Play',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const CustomButton(
                              buttonName: 'Download for Android',
                              type: ButtonVariant.filled,
                              width: 180,
                            ),
                            Image.asset(
                              StaticAssets.landingAndroidImage,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Footer(),
        ],
      ),
    );
  }
}
