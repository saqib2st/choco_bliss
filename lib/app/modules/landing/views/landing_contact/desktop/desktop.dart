// Define the part file reference (assuming it's part of another Dart file)
part of '../landing_contact.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  // Function to launch email using the mailto protocol
  Future<void> launchMailto(String name, String email, String message) async {
    final mailtoLink = Mailto(
      to: ['saqib.amin2323@gmail.com'],
      // cc: ['cc1@example.com', 'cc2@example.com'],
      subject: name,
      body: message,
    );

    final mailtoUrl = mailtoLink.toString();

    if (await canLaunchUrl(Uri.parse(mailtoUrl))) {
      await launchUrl(Uri.parse(mailtoUrl));
    } else {
      print('Could not launch $mailtoUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return _buildWideContainers(context); // Desktop
        } else if (constraints.maxWidth > 800 && constraints.maxWidth <= 1200) {
          return _buildMediumContainers(context); // Tablet
        } else {
          return _buildNarrowContainers(context); // Mobile
        }
      },
    );
  }

  // Wide screen layout (Desktop)
  Widget _buildWideContainers(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: _buildContactForm(context).paddingOnly(top: 80.h),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/contact_us_icon.png', // Use your SVG asset path
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
          const Footer(),
        ],
      ),
    );
  }

  // Medium screen layout (Tablet)
  Widget _buildMediumContainers(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: _buildContactForm(context),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: _buildContactDetails(),
                ),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }

  // Narrow screen layout (Mobile)
  Widget _buildNarrowContainers(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildContactForm(context),
                const SizedBox(height: 20),
                _buildContactDetails(),
              ],
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }

  // Contact form widget with email sending feature
  Widget _buildContactForm(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _messageController = TextEditingController();

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contact Form',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(labelText: 'Message'),
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            CustomButton(
              isHover: true,
              buttonName: 'Submit',
              type: ButtonVariant.filled,
              width: 130,
              onPressed: () {
                final name = _nameController.text;
                final email = _emailController.text;
                final message = _messageController.text;

                if (name.isNotEmpty && email.isNotEmpty && message.isNotEmpty) {
                  launchMailto(name, email, message); // Send email
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please fill out all fields'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  // Contact details card
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
