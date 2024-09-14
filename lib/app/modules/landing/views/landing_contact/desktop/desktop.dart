part of '../landing_contact.dart';

// class Desktop extends GetWidget<LandingController> {
//   const Desktop({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 150.h),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text('Contact',
//                     style: CustomTextStyle.font18R.copyWith(
//                       fontWeight: FontWeight.bold,
//                       color: AppColor.primaryColor,
//                     )),
//                 SizedBox(
//                   height: size.height * 0.020,
//                 ),
//                 const Text(
//                   'Feel free to get in touch with our \nteam for any assistance',
//                   style: TextStyle(
//                     fontSize: 40,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: size.height * 0.020,
//                 ),
//                 Text(
//                   "We are available through our app, website, email, and phone, and will do our best to address any \nconcerns you may have. We value our users' feedback and are committed to continually improving \nour services to meet their needs.",
//                   style: CustomTextStyle.font18R.copyWith(
//                     color: AppColor.appDarkGrey,
//                     height: 1.5,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: 100.h,
//                 ),
//               ],
//             ),
//           ),
//           const Footer(),
//         ],
//       ),
//     );
//   }
// }

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _buildWideContainers(context);
        } else {
          return _buildNarrowContainers(context);
        }
      },
    );
  }

  Widget _buildWideContainers(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: _buildContactForm().paddingOnly(top: 80.h),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        StaticAssets.contacUsIcon,
                        height: 200,
                        width: 200,
                      ),
                      _buildContactDetails(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Footer()
        ],
      ),
    );
  }

  Widget _buildNarrowContainers(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildContactForm(),
                const SizedBox(height: 20),
                _buildContactDetails(),
              ],
            ),
          ),
          const Footer()
        ],
      ),
    );
  }

  Widget _buildContactForm() {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Form',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Message'),
              maxLines: 5,
            ),
            SizedBox(height: 16),
            CustomButton(
              isHover: true,
              buttonName: 'Submit',
              type: ButtonVariant.filled,
              width: 130,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactDetails() {
    return const Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Contact Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 Main Street, City, Country'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+1 234 567 890'),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('contact@company.com'),
            ),
          ],
        ),
      ),
    );
  }
}
