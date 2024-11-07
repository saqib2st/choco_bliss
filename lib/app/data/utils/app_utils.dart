// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppUtils {
////////////profile Utils////////////////////////////
//   static List<ProfileItem> tenantProfile = [
//     ProfileItem(
//       route: AppRoutesConst.userProfile,
//       iconPath: StaticAssets.profileRoundedIcon,
//       title: 'Profile',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.bookedVisits,
//       iconPath: StaticAssets.bookedVisitsIcon,
//       title: 'Booked visits',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.yourOffers,
//       iconPath: StaticAssets.yourOffersIcon,
//       title: 'Your offers',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.payments,
//       iconPath: StaticAssets.walletIcon,
//       title: 'Payments',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.agreements,
//       iconPath: StaticAssets.agreementIcon,
//       title: 'Agreements',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.maintenanceIssues,
//       iconPath: StaticAssets.maintenanceIcon,
//       title: 'Maintenance issues',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.ratingReviews,
//       iconPath: StaticAssets.ratingsIcon,
//       title: 'Rating and Reviews',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.notifications,
//       iconPath: StaticAssets.notification,
//       title: 'Notifications',
//     ),
//   ];
//
//   static List<ProfileItem> landlordProfile = [
//     ProfileItem(
//       route: AppRoutesConst.userProfile,
//       iconPath: StaticAssets.profileRoundedIcon,
//       title: 'Profile',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.income,
//       iconPath: StaticAssets.walletIcon,
//       title: 'Income',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.yourOffers,
//       iconPath: StaticAssets.yourOffersIcon,
//       title: 'Your offers',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.agreements,
//       iconPath: StaticAssets.agreementIcon,
//       title: 'Agreements',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.maintenanceIssues,
//       iconPath: StaticAssets.maintenanceIcon,
//       title: 'Maintenance issues',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.ratingReviews,
//       iconPath: StaticAssets.ratingsIcon,
//       title: 'Rating and Reviews',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.notifications,
//       iconPath: StaticAssets.notification,
//       title: 'Notifications',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.externalUsers,
//       iconPath: StaticAssets.groupUsers,
//       title: 'External Users',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.drafts,
//       iconPath: StaticAssets.editproperty,
//       title: 'Drafts',
//     ),
//   ];
//   static List<Map<String, dynamic>> externalUser = [
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.profileRoundedIcon,
//       'title': 'Profile',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.walletIcon,
//       'title': 'Income',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.yourOffersIcon,
//       'title': 'Your offers',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.agreementIcon,
//       'title': 'Agreements',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.maintenanceIcon,
//       'title': 'Maintenance issues',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.ratingsIcon,
//       'title': 'Rating and Reviews',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.homeIcon,
//       'title': 'Home',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.properties,
//       'title': 'Properties',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.calendarIcon,
//       'title': 'Calender',
//     },
//     {
//       'isSelected': false,
//       'iconPath': StaticAssets.inboxIcon,
//       'title': 'Inbox',
//     },
//   ];
//
//   static List<ProfileItem> legal = [
//     ProfileItem(
//       route: AppRoutesConst.termsConditions,
//       iconPath: StaticAssets.bookIcon,
//       title: 'Term of Services',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.privacyPolicy,
//       iconPath: StaticAssets.bookIcon,
//       title: 'Privacy Policy',
//     ),
//   ];
//   static List<ProfileItem> support = [
//     ProfileItem(
//       route: AppRoutesConst.faqs,
//       iconPath: StaticAssets.faqsIcon,
//       title: 'FAQ',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.contact,
//       iconPath: StaticAssets.sendIcon,
//       title: 'Contact',
//     ),
//     ProfileItem(
//       route: AppRoutesConst.aboutUs,
//       iconPath: StaticAssets.aboutUsIcon,
//       title: 'About Us',
//     ),
//   ];
//
//   static List<Map<String, dynamic>> getApplandingLandlord = [
//     {
//       'iconPath': StaticAssets.downloadTheApp,
//       'title': 'Download the app',
//       'description':
//           'Download our app now to simplify \nthe process of managing your \nrental properties',
//     },
//     {
//       'iconPath': StaticAssets.createAnAccount,
//       'title': 'Create an account',
//       'description':
//           'Sign up for an account in our app \nby providing your personal and \nproperty details.',
//     },
//     {
//       'iconPath': StaticAssets.listyourproperties,
//       'title': 'List your properties',
//       'description':
//           'Add your rental properties to the \napp, including property details, \nphotos, and rental rates.',
//     },
//     {
//       'iconPath': StaticAssets.rentwithConfidence,
//       'title': 'Manage tenants',
//       'description':
//           'Easily manage tenant applications \nand select the best tenants for \nyour properties.',
//     },
//   ];
//   static List<Map<String, dynamic>> getApplandingHome = [
//     {
//       'iconPath': StaticAssets.downloadTheApp,
//       'title': 'Download the app',
//       'description':
//           'Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt ut labore et dolore.',
//     },
//     {
//       'iconPath': StaticAssets.advanceSearch2,
//       'title': 'View relevant properties',
//       'description':
//           'Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt ut labore et dolore.',
//     },
//     {
//       'iconPath': StaticAssets.listyourproperties,
//       'title': 'Schedule free tours',
//       'description':
//           'Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt ut labore et dolore.',
//     },
//     {
//       'iconPath': StaticAssets.rentwithConfidence,
//       'title': 'Rent with confidence',
//       'description':
//           'Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt ut labore et dolore.',
//     },
//   ];
//
//   static List<Map<String, dynamic>> landlords = [
//     {
//       'iconPath': Icons.check,
//       'title': 'Rent out your proprty for free',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Get your property exposed for +1000 of tenants',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Contact tenants using internal chat',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Let the tenant know you have verified identity',
//     },
//   ];
//
//   static List<Map<String, dynamic>> tenant = [
//     {
//       'iconPath': Icons.check,
//       'title': 'Create a tenant profile for free',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Access hundreds new property adverts every week',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Let the landlord know you have verified identity',
//     },
//     {
//       'iconPath': Icons.check,
//       'title': 'Receive real time notifications with property updates',
//     },
//   ];
//
//   static List<Map<String, dynamic>> amazingFeatures = [
//     {
//       'iconPath2': StaticAssets.advanceSearch1,
//       'iconPath': StaticAssets.advanceSearch2,
//       'title': 'Advance search',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.filterOption2,
//       'iconPath': StaticAssets.filterOption1,
//       'title': 'Filter option',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.mapPreview2,
//       'iconPath': StaticAssets.mapPreview1,
//       'title': 'Map preview',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.addFavourites,
//       'iconPath': StaticAssets.addFavourites,
//       'title': 'Add favourites',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.saveSearches1,
//       'iconPath': StaticAssets.saveSearches2,
//       'title': 'Save searches',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.bookVisitation2,
//       'iconPath': StaticAssets.bookVisitation1,
//       'title': 'Book visitaion',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.chatwithlandlors1,
//       'iconPath': StaticAssets.chatwithlandlords,
//       'title': 'Chat with landlords',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.paybills2,
//       'iconPath': StaticAssets.paybills1,
//       'title': 'Pay bills',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.realtimenotification1,
//       'iconPath': StaticAssets.realtimenotification2,
//       'title': 'Report issues',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.iDValidation1,
//       'iconPath': StaticAssets.iDValidation3,
//       'title': 'Id validation',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.makeAnOffer2,
//       'iconPath': StaticAssets.makeAnOffer1,
//       'title': 'Make an offer',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//     {
//       'iconPath2': StaticAssets.signContract2,
//       'iconPath': StaticAssets.signContract1,
//       'title': 'Sign contract',
//       'description':
//           'Inaudito versus licentia class sodales parte nibh tyriis-donec abdicatione invehere haeret w- excelsum nec cras usus nisi potens quae',
//     },
//   ];
//
//   static List<Map<String, dynamic>> featuresForLandlord = [
//     {
//       'iconPath2': StaticAssets.externalUserAccess2,
//       'iconPath': StaticAssets.externalUserAccess,
//       'title': 'External user access',
//       'description':
//           'This feature enables landlords to grant access to external users, such as property managers or contractors, to view and manage their rental properties through the app.',
//     },
//     {
//       'iconPath2': StaticAssets.leaseCustomization1,
//       'iconPath': StaticAssets.leaseCustomization2,
//       'title': 'Lease Customization',
//       'description':
//           'This feature enables landlords to customize leases by creating their own from scratch, and adding custom clauses to meet their rental propertys unique requirements.',
//     },
//     {
//       'iconPath2': StaticAssets.landlordsreview1,
//       'iconPath': StaticAssets.landlordsreview2,
//       'title': 'Landlords review',
//       'description':
//           'Landlords can leave reviews and rate tenants based on overall rental experience. This feature provides information for other landlords, helping to improve the quality of the rental market.',
//     },
//     {
//       'iconPath2': StaticAssets.visitManagement1,
//       'iconPath': StaticAssets.visitManagement2,
//       'title': 'Visit Management',
//       'description':
//           'This feature enables landlords to schedule and manage property visits with ease. Landlords can set visitation hours, receive appointment requests and manage multiple visits at once.',
//     },
//     {
//       'iconPath2': StaticAssets.chatwithlandlors1,
//       'iconPath': StaticAssets.chatwithlandlords,
//       'title': 'Chat with tenants',
//       'description':
//           'This feature enables landlords to easily communicate with tenants through an in-app messaging system. Landlords can send and receive messages, and resolve issues quickly.',
//     },
//     {
//       'iconPath2': StaticAssets.recievePayments2,
//       'iconPath': StaticAssets.recievePayments1,
//       'title': 'Receive payments',
//       'description':
//           'This feature enables landlords to receive secure rent payments directly through the app. Tenants can make payments securely through the app, and landlords can track payment history.',
//     },
//     {
//       'iconPath2': StaticAssets.realtimenotification1,
//       'iconPath': StaticAssets.realtimenotification2,
//       'title': 'Real-time notifications',
//       'description':
//           'This feature enables landlords to stay updated in real-time. Landlords can receive notifications for tenant applications, property visits, rent payments, and maintenance requests.',
//     },
//     {
//       'iconPath2': StaticAssets.iDValidation2,
//       'iconPath': StaticAssets.iDValidation3,
//       'title': 'ID validation',
//       'description':
//           '"This feature enables landlords to verify the identity of their tenants. ID validation is helping to ensure that only trustworthy individuals are renting their properties.',
//     },
//     {
//       'iconPath2': StaticAssets.documentStorage1,
//       'iconPath': StaticAssets.documentStorage2,
//       'title': 'Document storage',
//       'description':
//           'This feature enables landlords to easily store and manage important documents related to their rental properties.  With document storage, landlords can quickly access the information they need to manage their rental properties.',
//     },
//   ];
//
//   static List<Map<String, dynamic>> imageData = [
//     {
//       'imagePath': StaticAssets.landingDubaiImages1,
//       'title': 'Dubai Hills Estate',
//       'description':
//           'Its a high-end, master-planned community in Dubai, featuring villas, apartments, and townhouses with world-class amenities, and close proximity to major highways.',
//       'descriptionTwo': '100+ properties available',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages2,
//       'title': 'Jumeirah Village Circle',
//       'description':
//           'Its a family-friendly residential community in Dubai, known for its mix of apartments, villas, and townhouses, with easy access to major highways and amenities.',
//       'descriptionTwo': '300+ properties available',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages3,
//       'title': 'The Palm Jumeirah',
//       'description':
//           'Its a luxurious man-made island in Dubai, known for its high-end hotels, villas, and apartments, and is a popular tourism destination with a variety of dining and retail options.',
//       'descriptionTwo': '200+ properties available',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages4,
//       'title': 'Businness Bay',
//       'description':
//           'Its a central business district in Dubai, United Arab Emirates. It is known for its modern skyscrapers and luxury hotels, and offers a range of commercial and residential properties.',
//       'descriptionTwo': '100+ properties available',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages5,
//       'title': 'Dubai Downtown',
//       'description':
//           'Its a bustling district in Dubai, known for its iconic landmarks, including the Burj Khalifa and Dubai Mall. Its a popular tourist destination with high-end hotels, restaurants, and entertainment.',
//       'descriptionTwo': '200+ properties available',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages6,
//       'title': 'Dubai Marina',
//       'description':
//           'Its a vibrant waterfront community in Dubai, United Arab Emirates. It is known for its high-rise buildings, luxury yachts, and wide range of dining and entertainment options.',
//       'descriptionTwo': '150+ properties available',
//     },
//   ];
//
//   static List<Map<String, dynamic>> homeData = [
//     {
//       'text1': 'View properties relevant to your search',
//       'text2':
//           'Energistically underwhelm progressive metrics via value-added impact magnetic world-class paradigms portals. Pontificate reliable metrics with enabled maintain clicks-and-mortar manufactured.',
//       'icon1': StaticAssets.seFilters,
//       'title1': 'Use Filters',
//       'description1': 'Objectively productize exceptional via customized.',
//       'icon2': StaticAssets.mapView,
//       'title2': 'Map View',
//       'description2':
//           'Interactively integrate extensible users maximizing resource.',
//       'image': StaticAssets.landingFeature1Png,
//     },
//     {
//       'text1': 'Save your searches for speedy access',
//       'text2':
//           'Reliable metrics with enabled infomediaries. Holisticly maintain clicks-and-mortar manufactured products empower viral customer service through resource supply pandemic collaboration.',
//       'icon1': StaticAssets.favourites,
//       'title1': 'Favourties',
//       'description1':
//           'Objectively error-free develop intuitive catalysts for change.',
//       'icon2': StaticAssets.savedSearches,
//       'title2': 'Saved Searches',
//       'description2':
//           'Compellingly initiate distinctive principle-centered sources.',
//       'image': StaticAssets.landingFeature2,
//     },
//     {
//       'text1': 'Chat and transact with properties owners',
//       'text2':
//           'Credibly deliver out-of-the-box benefits through just in time best practices. Globally orchestrate holistic communities without visualize performance based premium alignments.',
//       'icon1': StaticAssets.bookVisitation,
//       'title1': 'Book visitation',
//       'description1':
//           'Rapidiously exploit robust solutions without alignments.',
//       'icon2': StaticAssets.chartwithlandlord,
//       'title2': 'Chat with landlord',
//       'description2':
//           'Interactively integrate whereas extensible users resource.',
//       'image': StaticAssets.landingFeature3,
//     },
//     {
//       'text1': 'Quick access bills and maintenance issues',
//       'text2':
//           'Reliable metrics with enabled infomediaries. Holisticly maintain clicks-and-mortar manufactured products empower viral customer service through resource supply pandemic collaboration.',
//       'icon1': StaticAssets.paybills,
//       'title1': 'Pay bills',
//       'description1':
//           'Objectively error-free develop intuitive catalysts for change.',
//       'icon2': StaticAssets.reportissue,
//       'title2': 'Report issue',
//       'description2':
//           'Compellingly initiate distinctive principle-centered sources.',
//       'image': StaticAssets.landingFeature4,
//     },
//   ];
//   static List<Map<String, dynamic>> landingContactUs = [
//     {
//       'iconPath': StaticAssets.address,
//       'title': 'Address',
//       'buttonName': 'See on Google Map',
//       'description': 'Vestergade 39 \n5000 Odense, Denmark',
//     },
//     {
//       'iconPath': StaticAssets.email,
//       'title': 'Email',
//       'buttonName': 'Email Us',
//       'description':
//           'If you have any questions please email us at info@homehunter.com',
//     },
//     {
//       'iconPath': StaticAssets.contact,
//       'title': 'Call',
//       'buttonName': '00-976-561-008',
//       'description':
//           'Give us a ring.Our Experts are standing by monday to friday from 9am to 5pm EST.',
//     },
//   ];
//
//   static List<Map<String, dynamic>> tenantCalendar = [
//     {
//       'icon': Icons.email,
//       'text': 'Email',
//     },
//     {
//       'icon': Icons.phone,
//       'text': 'Call',
//     },
//     {
//       'icon': Icons.chat,
//       'text': 'Chat',
//     },
//     {
//       'icon': Icons.chat_rounded,
//       'text': 'WhatsApp',
//     },
//   ];
//
//
//
//   static List<Map<String, dynamic>> repitition = [
//     {
//       'text': "Doesn't Repeat",
//     },
//     {
//       'text': 'Daily',
//     },
//     {
//       'text': 'Weekly on Thursday',
//     },
//     {
//       'text': 'Every weekday (Monday to Friday)',
//     },
//     {
//       'text': 'Custom',
//     },
//   ];
//
//   static List<Map<String, dynamic>> days = [
//     {
//       'text': "Monday",
//     },
//     {
//       'text': 'Tuesday',
//     },
//     {
//       'text': 'Wednesday',
//     },
//     {
//       'text': 'Thursday',
//     },
//     {
//       'text': 'Friday',
//     },
//     {
//       'text': 'Saturday',
//     },
//     {
//       'text': 'Sunday',
//     },
//   ];
//
//   static List<Map<String, dynamic>> service = [
//     {
//       'text': "Home painting",
//     },
//     {
//       'text': 'Electrician',
//     },
//     {
//       'text': 'Plumber',
//     },
//     {
//       'text': 'Door repair',
//     },
//     {
//       'text': 'Internet',
//     },
//     {
//       'text': 'Heating',
//     },
//   ];
//
//   static List<Map<String, dynamic>> issue = [
//     {
//       'text': "Leakage",
//     },
//     {
//       'text': "Electricity",
//     },
//     {
//       'text': "Possible Issue #3",
//     },
//     {
//       'text': "Possible Issue #4",
//     },
//     {
//       'text': "Possible Issue #5",
//     },
//     {
//       'text': "Possible Issue #6",
//     },
//   ];
//
//   static List<Map<String, dynamic>> room = [
//     {
//       'text': "Livingroom",
//     },
//     {
//       'text': 'Bathroom',
//     },
//     {
//       'text': 'Bedroom',
//     },
//     {
//       'text': 'Kitchen',
//     },
//     {
//       'text': 'Entrance',
//     },
//   ];
//
//   static List<Map<String, dynamic>> meetings = [
//     {
//       'time': '8:00 am',
//       'title': 'Dubai Marina',
//       'description': 'Visitation: Charles Nielsen',
//     },
//     {
//       'time': '9:00 am',
//       'title': 'Dubai Marina',
//       'description': 'Visitation: Charles Nielsen',
//     },
//   ];
//
//   static List<String> termsCondition = [
//     'Terms and Conditions ',
//     'Accounts and membership',
//     'User Content',
//     'Terms and Conditions ',
//     'Accounts and membership',
//     'User Content',
//     'Terms and Conditions ',
//     'Accounts and membership',
//     'User Content',
//   ];
//
//   ////////////Search Filter Property Type Utils////////////////////////////
//
//   static List<Map<String, dynamic>> propertyType = [
//     {
//       'iconPath': StaticAssets.appartment,
//       'title': 'Appartment',
//     },
//     {
//       'iconPath': StaticAssets.villaIcon,
//       'title': 'Villa',
//     },
//     {
//       'iconPath': StaticAssets.townHouse,
//       'title': 'Town House',
//     },
//     {
//       'iconPath': StaticAssets.pentHouse,
//       'title': 'PentHouse',
//     },
//     {
//       'iconPath': StaticAssets.compound,
//       'title': 'Compound',
//     },
//     {
//       'iconPath': StaticAssets.fullFloor,
//       'title': 'Full Floor',
//     },
//     {
//       'iconPath': StaticAssets.duplex,
//       'title': 'Duplex',
//     },
//   ];
//   //////////// add Amenities  add property Utils////////////////////////////
//
//   static List<Map<String, dynamic>> addAmenities = [
//     {
//       'title': 'Central A/C',
//       'isChecked': false,
//     },
//     {
//       'title': 'Parking spot',
//       'isChecked': false,
//     },
//     {
//       'title': 'Balcony',
//       'isChecked': false,
//     },
//     {
//       'title': 'Patio',
//       'isChecked': false,
//     },
//     {
//       'title': 'BBQ gril',
//       'isChecked': false,
//     },
//     {
//       'title': 'Hot tub',
//       'isChecked': false,
//     },
//     {
//       'title': 'Outdoor dining area',
//       'isChecked': false,
//     },
//     {
//       'title': 'Exercise equipment',
//       'isChecked': false,
//     },
//     {
//       'title': 'Pool',
//       'isChecked': false,
//     },
//     {
//       'title': 'Sea access',
//       'isChecked': false,
//     },
//   ];
//
//   // /////////////////////////////////recievedReviews ////////////////////////////////////
//   static List<Map<String, dynamic>> recievedReviews = [
//     {
//       'title': 'Excelent',
//       'value': 85,
//     },
//     {
//       'title': 'Very Good',
//       'value': 12,
//     },
//     {
//       'title': 'Good',
//       'value': 12,
//     },
//     {
//       'title': 'Average',
//       'value': 3,
//     },
//     {
//       'title': 'Poor',
//       'value': 0,
//     },
//   ];
//   /////////////////////////////////ratingandReviews ////////////////////////////////////
//
//   static List<Map<String, dynamic>> ratingandReviews = [
//     {
//       'route': AppRoutesConst.recievedReviews,
//       'iconPath': StaticAssets.reviewRecieved,
//       'title': 'Received reviews',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.givenReviews,
//       'iconPath': StaticAssets.reviewGiven,
//       'title': 'Given reviews',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////payments ////////////////////////////////////
//   static List<Map<String, dynamic>> payment = [
//     {
//       'route': '',
//       'iconPath': StaticAssets.creditCard,
//       'title': 'Credit Cards',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': '',
//       'iconPath': StaticAssets.invoice,
//       'title': 'Invoices',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
// // ///////////////////////////Tenant Profile////////////////////////////
// //
//   static List<Map<String, dynamic>> detailedRating = [
//     {
//       'title': 'Cleaning',
//       'rating': 4.0,
//     },
//     {
//       'title': 'Payment',
//       'rating': 2.0,
//     },
//     {
//       'title': 'Communication',
//       'rating': 3.0,
//     }
//   ];
//   /////////////////////////////////Landlord Maintenance ////////////////////////////////////
//   static List<Map<String, dynamic>> landlordmaintenance = [
//     {
//       'route': '',
//       'iconPath': StaticAssets.settingKey,
//       'title': 'Open Issues',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': '',
//       'iconPath': StaticAssets.checkBox,
//       'title': 'Fixed Issues',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////Maintenance ////////////////////////////////////
//   static List<Map<String, dynamic>> maintenance = [
//     {
//       'route': AppRoutesConst.openIssues,
//       'iconPath': StaticAssets.settingKey,
//       'title': 'Open Issues',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.fixedIssues,
//       'iconPath': StaticAssets.checkBox,
//       'title': 'Fixed Issues',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////Landlord Agreements ////////////////////////////////////
//
//   static List<Map<String, dynamic>> landlordAgreements = [
//     {
//       'route': '',
//       'iconPath': StaticAssets.signedIcon,
//       'title': 'Signed Agreements',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': '',
//       'iconPath': StaticAssets.ongoingIcon,
//       'title': 'Ongoing Agreements',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': '',
//       'iconPath': StaticAssets.archivedIcon,
//       'title': 'Archived Agreements',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////Landlord offers ////////////////////////////////////
//
//   static List<Map<String, dynamic>> landlordOffers = [
//     {
//       'route': '',
//       'iconPath': StaticAssets.cashIcon,
//       'title': 'Offers',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': '',
//       'iconPath': StaticAssets.sofaIcon,
//       'title': 'Reservations',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////your offers ////////////////////////////////////
//
//   static List<Map<String, dynamic>> yourOffers = [
//     {
//       'route': AppRoutesConst.offers,
//       'iconPath': StaticAssets.cashIcon,
//       'title': 'Offers',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.reservations,
//       'iconPath': StaticAssets.sofaIcon,
//       'title': 'Reservations',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////recievedReviews ////////////////////////////////////
//   static List<Map<String, dynamic>> reservationdetails = [
//     {
//       'title': 'Amount:',
//       'value': '16’000 AED',
//     },
//     {
//       'title': 'No. of payments:',
//       'value': '2',
//     },
//     {
//       'title': 'Total amount:',
//       'value': '32’000 AED',
//     },
//     {
//       'title': 'Offer date:',
//       'value': '20 June 2022',
//     },
//     {
//       'title': 'Address:',
//       'value': 'Dubai Marina 15, Dubai',
//     },
//     {
//       'title': 'Landlord:',
//       'value': 'Thomas Andersen',
//     },
//     {
//       'title': 'Phone:',
//       'value': '+ 366 254 748 5587',
//     },
//   ];
//   static List<Map<String, dynamic>> meetingDetails = [
//     {
//       'detail': 'All',
//     },
//     {
//       'detail': 'Paid',
//     },
//     {
//       'detail': 'Unpaid',
//     },
//   ];
//
//   /////////////////////////////////your offers ////////////////////////////////////
//
//   static List<Map<String, dynamic>> agreements = [
//     {
//       'route': AppRoutesConst.signed,
//       'iconPath': StaticAssets.signedIcon,
//       'title': 'Signed',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.ongoing,
//       'iconPath': StaticAssets.ongoingIcon,
//       'title': 'Ongoing',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.archived,
//       'iconPath': StaticAssets.archivedIcon,
//       'title': 'Archived',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   /////////////////////////////////faqs ////////////////////////////////////
//   static List<Map<String, dynamic>> faqs = [
//     {
//       'question': 'what is your name?',
//       'answer':
//           'Lorem ipsum dolor sit amet demos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'question': 'what you want to eat this night',
//       'answer':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'question':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do?',
//       'answer':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'question': 'how you can book a hotel room?',
//       'answer':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   static List<Map<String, dynamic>> tenantAllPlaces = [
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Dubai Marina',
//       'description': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Avenue Mall',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Lahore',
//       'description': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Denmark',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Lahore',
//       'description': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Denmark',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//   ];
//
//   static List<Map<String, dynamic>> tenantPlaces = [
//     {
//       'imagePath': StaticAssets.landingDubaiImages1,
//       'type': 'Penthouse',
//       'title': 'Dubai Marina',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages2,
//       'type': 'Plaza',
//       'title': 'Avenue Mall',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages3,
//       'type': 'City',
//       'title': 'Lahore',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages3,
//       'type': 'Penthouse',
//       'title': 'Denmark',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages1,
//       'type': 'City',
//       'title': 'Lahore',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': false,
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages2,
//       'type': 'Penthouse',
//       'title': 'Denmark',
//       'description': 'Marina Apartments F',
//       'amount': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//   ];
//
//   static List<Map<String, dynamic>> wishListPlaces = [
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Dubai Marina',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Avenue Mall',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Lahore',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Denmark',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Lahore',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//     {
//       'imagePath': StaticAssets.landingFeature1Jpg,
//       'title': 'Denmark',
//       'description': '120,000 ADE yearly',
//       'isFavourite': true,
//     },
//   ];
//
//   static List<Map<String, dynamic>> bookedVisits = [
//     {
//       'imagePath': StaticAssets.landingDubaiImages1,
//       'title': 'Dubai Marina',
//       'description': 'Booking: 12 July at 10 am',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages2,
//       'title': 'Cayan Tower',
//       'description': 'Booking: 17 July at 2 pm',
//     },
//     {
//       'imagePath': StaticAssets.landingDubaiImages3,
//       'title': 'Dubai Marina',
//       'description': 'Booking: 12 July at 10 am',
//     },
//   ];
//
//   static List<Map<String, dynamic>> paymentsTenant = [
//     {
//       'route': AppRoutesConst.creditCards,
//       'iconPath': StaticAssets.creditCard,
//       'title': 'Credit Cards',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//     {
//       'route': AppRoutesConst.invoices,
//       'iconPath': StaticAssets.invoice,
//       'title': 'Invoices',
//       'description':
//           'Lorem ipsum dolor sit amet domos, consectetur adipiscing elit sed do',
//     },
//   ];
//
//   static List<Map<String, dynamic>> propertyInfo = [
//     {
//       'title': 'Type:',
//       'description': 'Apartment',
//     },
//     {
//       'title': 'Purpose:',
//       'description': 'For rent',
//     },
//     {
//       'title': 'Furnished',
//       'description': 'Yes',
//     },
//     {
//       'title': 'Bills included:',
//       'description': 'No',
//     },
//     {
//       'title': 'Added on:',
//       'description': '18-05-2022',
//     },
//   ];
//
//   static List<Map<String, dynamic>> offerDetails = [
//     {
//       'title': 'Amount:',
//       'description': '30’000 AED',
//     },
//     {
//       'title': 'No. of payments:',
//       'description': '1',
//     },
//     {
//       'title': 'Total amount:',
//       'description': '30’000 AED',
//     },
//     {
//       'title': 'Offer date:',
//       'description': '20 June 2022',
//     },
//     {
//       'title': 'Address:',
//       'description': 'Dubai Marina 15, Dubai',
//     },
//     {
//       'title': 'Landlord:',
//       'description': 'Thomas Andersen',
//     },
//     {
//       'title': 'Phone:',
//       'description': '+ 366 254 748 5587',
//     },
//   ];
//
//   static List<Map<String, dynamic>> hostInfo = [
//     {
//       'title': 'Reviews:',
//       'description': '843',
//     },
//     {
//       'title': 'Identity:',
//       'description': 'Verified',
//     },
//     {
//       'title': 'Host level:',
//       'description': 'Super host',
//     },
//     {
//       'title': 'Languages:',
//       'description': 'English, Arabic',
//     },
//     {
//       'title': 'Response rate:',
//       'description': '100%',
//     },
//   ];
//
//   static List<Map<String, dynamic>> animities = [
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Parking spot',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sea access',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sun loungers',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Fire pit',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Health Club',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sea access',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sun loungers',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Fire pit',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Health Club',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sea access',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sun loungers',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Fire pit',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Health Club',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sea access',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Sun loungers',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Fire pit',
//     },
//     {
//       'iconPath': StaticAssets.chat,
//       'text': 'Health Club',
//     },
//   ];
//   static List<Map<String, dynamic>> aboutUsCard = [
//     {
//       'title': 'Give us a call',
//       'description':
//           'Give us a ring.Our Experts are standing by monday to friday \nfrom 9am to 5pm EST.',
//       'buttonName': '00-976-561-008',
//     },
//     {
//       'title': 'Send us a message',
//       'description':
//           'If you have any questions please email us at \ninfo@homehunter.com',
//       'buttonName': 'Email Us',
//     },
//   ];

  ////////////////////////////EXTenSIons///////////////

  static void showSnackbar({
    required String message,
    Color backgroundColor = Colors.black87,
    Color textColor = Colors.white,
    int durationInSeconds = 3,
    String? title,
    SnackPosition position = SnackPosition.BOTTOM,
    IconData? icon,
  }) {
    Get.snackbar(
      title ?? '', // Title is optional; it will be empty if not provided
      message,
      backgroundColor: backgroundColor,
      colorText: textColor,
      duration: Duration(seconds: durationInSeconds),
      snackPosition: position,
      icon: icon != null ? Icon(icon, color: textColor) : null,
      margin: const EdgeInsets.all(10),
    );
  }
}
