part of '../download_app.dart';

class Desktop extends GetWidget<LandingController> {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) { 
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          Stack(
            children: [
              Container(
                height: 720,
                color: AppColor.darkGreen,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      'Download Homehunter App for FREE',
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
                          height: 570,
                          width: 500,
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
                          height: 570,
                          width: 500,
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
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
