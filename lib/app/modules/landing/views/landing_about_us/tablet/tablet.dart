part of '../landing_about_us.dart';

class Tablet extends GetWidget<LandingController> {
  const Tablet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'About Us',
                        style: CustomTextStyle.font45M.copyWith(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      const Text(
                        'About Choco Bliss\'s Desserts Spreading Delicious Happiness',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: size.height * 0.020,
                      ),
                      Text(
                        'Our gelatos are made by hand, in-house, the Italian way. With no artificial colouring, no vegetable fats, and no artificial sweeteners, all Choco Bliss\'s gelato is produced in our very own factory using only the finest ingredients.',
                        style: CustomTextStyle.font18R.copyWith(
                          color: AppColor.appDarkGrey,
                          height: 1.4,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          Container(
            height: 900,
            color: AppColor.darkGreen,
            child: Center(
              child: SizedBox(
                width: size.width * 0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'About Choco-Bliss',
                      style: CustomTextStyle.font24R.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "At Choco-Bliss, we’re on a mission to turn every sweet craving into a delightful experience. Whether you’re eager to discover something new or relive your favorite childhood treat, we offer an extensive array of hot and cold indulgences all under one roof. From luxurious Italian gelatos to waffles, crepes, shakes, smoothies, and sundaes, our menu is designed to make your tastebuds dance in delight. Our goal? It’s simple: to create unforgettable moments where you and your loved ones savor delectable desserts and enjoy extraordinary experiences. And to top it all off, we’re committed to delivering exceptional customer service to make your Choco-Bliss experience truly special. After all, without desserts, life would just be a little less sweet.Choco-Bliss was founded to spread joy, one delicious bite at a time. Our parlours serve up a wide selection of high-quality, freshly made sweet treats for dessert lovers of all ages. From our handcrafted artisan gelato to our exciting collaborations with beloved confectionery brands, to our irresistible range of waffles, crepes, shakes, smoothies, and sundaes—at Choco-Bliss, we’re not just serving desserts; we’re creating cherished memories",
                      style: CustomTextStyle.font16R.copyWith(
                        color: AppColor.textGrey,
                        height: 1.6,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      'ChocoBliss Team',
                      style: GoogleFonts.laBelleAurore().copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColor.textGrey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
