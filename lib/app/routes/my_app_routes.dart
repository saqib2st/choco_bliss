import 'package:choco_bliss/app/modules/add_to_cart/controllers/add_to_cart_controller.dart';
import 'package:choco_bliss/app/modules/add_to_cart/views/add_to_cart_view.dart';
import 'package:choco_bliss/app/modules/landing/views/menu/itemDetials/itemDetail.dart';
import 'package:choco_bliss/app/modules/landing/views/menu/menu.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:choco_bliss/app/modules/landing/controllers/landing_controller.dart';
import 'package:choco_bliss/app/modules/landing/views/download_app/download_app.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_about_us/landing_about_us.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_contact/landing_contact.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_features/landing_features.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_home/landing_home.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_landlord/landing_landlord.dart';
import 'package:choco_bliss/app/modules/landing/views/landing_view.dart';
import 'package:choco_bliss/app/routes/app_route_const.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> mainShellnavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'mainShellnavigatorKey');
final GlobalKey<NavigatorState> addItemToCArtNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'addItemToCArtNavigatorKey');
final GlobalKey<NavigatorState> authenticatonShellnavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'authenticatonShellnavigatorKey');
final GlobalKey<NavigatorState> landingShellnavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'authenticatonShellnavigatorKey');

final GoRouter router = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    initialLocation: kIsWeb ? '/' : '/splash',
    routes: [
      // GoRoute(
      //   path: AppRoutesConst.splash,
      //   name: 'splash',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<SplashController>(SplashController(context: context));
      //     return const SplashView();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.aboutUs,
      //   name: 'aboutUs',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const AboutUs();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.contact,
      //   name: 'contact',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<SupportController>(SupportController());
      //     return const Contact();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.faqs,
      //   name: 'faqs',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<SupportController>(SupportController());
      //     return const FAQs();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.privacyPolicy,
      //   name: 'privacyPolicy',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const PrivacyPolicy();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.termsConditions,
      //   name: 'termsConditions',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const TermOfServices();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.userProfile,
      //   name: 'userProfile',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<ProfileController>(ProfileController());
      //     return const MobileProfile();
      //   },
      // ),
      // GoRoute(
      //     path: AppRoutesConst.income,
      //     name: 'income',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<IncomeController>(IncomeController());
      //       return const IncomeView();
      //     },
      //     routes: [
      //       GoRoute(
      //         path: AppRoutesConst.payoutView,
      //         name: 'payoutView',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<IncomeController>(IncomeController());
      //           return const PayoutView();
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.transactionView,
      //         name: 'transactionView',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<TransactionController>(TransactionController());
      //           return const TransactionView();
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.incomeByProperty,
      //         name: 'incomeByProperty',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<TransactionDetailController>(
      //               TransactionDetailController());
      //           return const IncomeByProperty();
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.payoutHelpView,
      //         name: 'payoutHelpView',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<IncomeController>(IncomeController());
      //           return const PayoutHelpView();
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.payoutDetail,
      //         name: 'payoutDetail',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<IncomeController>(IncomeController());
      //           return const PayoutDetail();
      //         },
      //       ),
      //     ]),
      // GoRoute(
      //     path: AppRoutesConst.yourOffers,
      //     name: 'yourOffers',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<YourOffersController>(YourOffersController());
      //       return const YourOffersView();
      //     },
      //     routes: [
      //       GoRoute(
      //           path: AppRoutesConst.reservations,
      //           name: 'reservations',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<ReservationController>(ReservationController());
      //             return const ReservationView();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.reservationDetails,
      //               name: 'reservationDetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<ReservationDetailController>(
      //                     ReservationDetailController());
      //                 return const ReservationDetails();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.offers,
      //           name: 'offers',
      //           builder: (BuildContext context, GoRouterState state) {
      //             return const OffersView();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.offersDetails,
      //               name: 'offersDetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 OfferStatus status = state.extra as OfferStatus;
      //                 return OfferDetails(
      //                   status: status,
      //                 );
      //               },
      //             ),
      //             GoRoute(
      //                 path: AppRoutesConst.rejectedOffers,
      //                 name: 'rejectedOffers',
      //                 builder: (BuildContext context, GoRouterState state) {
      //                   return const RejectedOffers();
      //                 },
      //                 routes: [
      //                   GoRoute(
      //                     path: AppRoutesConst.rejectedOffersDetails,
      //                     name: 'rejectedOffersDetails',
      //                     builder: (BuildContext context, GoRouterState state) {
      //                       OfferStatus status = state.extra as OfferStatus;
      //                       return OfferDetails(
      //                         status: status,
      //                       );
      //                     },
      //                   ),
      //                 ]),
      //           ]),
      //     ]),
      // GoRoute(
      //     path: AppRoutesConst.agreements,
      //     name: 'agreements',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<AgreementsController>(AgreementsController());
      //       return const AgreementsView();
      //     },
      //     routes: [
      //       GoRoute(
      //         path: AppRoutesConst.newAgreement,
      //         name: 'newAgreement',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<CreateAgreementsController>(
      //               CreateAgreementsController());
      //           return const NewAgreement();
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.sendContract,
      //         name: 'sendContract',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<AgreementsPreviewController>(
      //               AgreementsPreviewController());
      //           return const ContractPreview();
      //         },
      //       ),
      //       GoRoute(
      //           path: AppRoutesConst.ongoing,
      //           name: 'ongoing',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<OngoingAgreementsController>(
      //                 OngoingAgreementsController());
      //             return const OngoingView();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.contractODetails,
      //               name: 'contractODetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<AgreementsPreviewController>(
      //                     AgreementsPreviewController());
      //                 return const ContractPreview();
      //               },
      //             ),
      //             GoRoute(
      //               path: AppRoutesConst.ongoingContract,
      //               name: 'ongoingContract',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<AgreementsController>(AgreementsController());
      //                 return const OngoingContract();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.signed,
      //           name: 'signed',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<SignedAgreementsController>(
      //                 SignedAgreementsController());
      //             return const SignedView();
      //           },
      //           routes: [
      //             GoRoute(
      //                 path: AppRoutesConst.contractSDetails,
      //                 name: 'contractSDetails',
      //                 builder: (BuildContext context, GoRouterState state) {
      //                   Get.put<AgreementsPreviewController>(
      //                       AgreementsPreviewController());
      //                   return const ContractPreview();
      //                 },
      //                 routes: [
      //                   GoRoute(
      //                     path: AppRoutesConst.invoicePreview,
      //                     name: 'invoicePreview',
      //                     builder: (BuildContext context, GoRouterState state) {
      //                       Get.put<InvoicePreviewController>(
      //                           InvoicePreviewController());
      //                       return const InvoicePreview();
      //                     },
      //                   ),
      //                   GoRoute(
      //                     path: AppRoutesConst.createDeposit,
      //                     name: 'createDeposit',
      //                     builder: (BuildContext context, GoRouterState state) {
      //                       Get.put<InvoiceController>(InvoiceController());
      //                       return const CreateDeposit();
      //                     },
      //                   ),
      //                   GoRoute(
      //                     path: AppRoutesConst.createInvoice,
      //                     name: 'createInvoice',
      //                     builder: (BuildContext context, GoRouterState state) {
      //                       Get.put<InvoiceController>(InvoiceController());
      //                       return const CreateInvoice();
      //                     },
      //                   ),
      //                 ]),
      //             GoRoute(
      //               path: AppRoutesConst.signedContract,
      //               name: 'signedContract',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<AgreementsController>(AgreementsController());
      //                 return const SignedContract();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.archived,
      //           name: 'archived',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<ArchivedAgreementsController>(
      //                 ArchivedAgreementsController());
      //             return const ArchivedView();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.contractADetails,
      //               name: 'contractADetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<AgreementsPreviewController>(
      //                     AgreementsPreviewController());
      //                 return const ContractPreview();
      //               },
      //             ),
      //             GoRoute(
      //               path: AppRoutesConst.archivedContract,
      //               name: 'archivedContract',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<AgreementsController>(AgreementsController());
      //                 return const ArchivedContract();
      //               },
      //             ),
      //           ]),
      //     ]),
      // GoRoute(
      //     path: AppRoutesConst.maintenanceIssues,
      //     name: 'maintenanceIssues',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<MaintenanceIssuesController>(MaintenanceIssuesController());
      //       return const MaintenanceIssuesView();
      //     },
      //     routes: [
      //       GoRoute(
      //           path: AppRoutesConst.openIssues,
      //           name: 'openIssues',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<OpenIssuesController>(OpenIssuesController());
      //             return const OpenIssues();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.issuePreview,
      //               name: 'issuePreview',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<IssuesPreviewController>(
      //                     IssuesPreviewController());
      //                 return const IssuePreview();
      //               },
      //             ),
      //             GoRoute(
      //               path: AppRoutesConst.issueEdit,
      //               name: 'issueEdit',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<EditIssuesController>(EditIssuesController());
      //                 return const EditIssue();
      //               },
      //             ),
      //             GoRoute(
      //               path: AppRoutesConst.createIssue,
      //               name: 'createIssue',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<MaintenanceIssuesController>(
      //                     MaintenanceIssuesController());
      //                 return const AddIssue();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.fixedIssues,
      //           name: 'fixedIssues',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<FixedIssuesController>(FixedIssuesController());
      //             return const FixedIssues();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.report,
      //               name: 'report',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<MaintenanceIssuesController>(
      //                     MaintenanceIssuesController());
      //                 return const Report();
      //               },
      //             ),
      //           ]),
      //     ]),
      // GoRoute(
      //     path: AppRoutesConst.ratingReviews,
      //     name: 'ratingReviews',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<RatingReviewsController>(RatingReviewsController());
      //       return const RatingReviewsView();
      //     },
      //     routes: [
      //       GoRoute(
      //           path: AppRoutesConst.recievedReviews,
      //           name: 'recievedReviews',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<RecievedReviewController>(RecievedReviewController());
      //             return const RecievedReviews();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.reviewPreview,
      //               name: 'reviewPreview',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<RatingReviewsController>(
      //                     RatingReviewsController());
      //                 return const ReviewPreview();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.givenReviews,
      //           name: 'givenReviews',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<GivenReviewController>(GivenReviewController());
      //             return const GivenReviews();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.givenReviewsPreview,
      //               name: 'givenReviewsPreview',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<GivenReviewPreviewController>(
      //                     GivenReviewPreviewController());
      //                 return const GivenReviewPreview();
      //               },
      //             ),
      //             GoRoute(
      //               path: AppRoutesConst.addReview,
      //               name: 'addReview',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<RatingReviewsController>(
      //                     RatingReviewsController());
      //                 return const AddReview();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //         path: AppRoutesConst.givenReviewsProperties,
      //         name: 'givenReviewsProperties',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<RatingReviewsController>(RatingReviewsController());
      //           return const GivenReviewsProperties();
      //         },
      //       ),
      //     ]),
      // GoRoute(
      //   path: AppRoutesConst.notifications,
      //   name: 'notifications',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<NotificationsController>(NotificationsController());
      //     return const NotificationsView();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.externalUsers,
      //   name: 'externalUsers',
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ExternalUsersView();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.drafts,
      //   name: 'drafts',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<DraftsController>(DraftsController());
      //     return const DraftsView();
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.setProfile,
      //   name: 'setProfile',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<SetProfileController>(SetProfileController());
      //     return const SetProfileView();
      //   },
      // ),
      // GoRoute(
      //     path: AppRoutesConst.bookedVisits,
      //     name: 'bookedVisits',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<BookedVisitsController>(BookedVisitsController());
      //       return const BookedVisitsView();
      //     },
      //     routes: [
      //       GoRoute(
      //         path: AppRoutesConst.visitsDetails,
      //         name: 'visitsDetails',
      //         builder: (BuildContext context, GoRouterState state) {
      //           Get.put<VisitDetailController>(VisitDetailController());
      //           return const VisitDetails();
      //         },
      //       ),
      //     ]),
      // GoRoute(
      //     path: AppRoutesConst.payments,
      //     name: 'payments',
      //     builder: (BuildContext context, GoRouterState state) {
      //       Get.put<PaymentsController>(PaymentsController());
      //       return const PaymentsView();
      //     },
      //     routes: [
      //       GoRoute(
      //           path: AppRoutesConst.invoices,
      //           name: 'invoices',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<InvoicesController>(InvoicesController());
      //             return const Invoices();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.payInvoices,
      //               name: 'payInvoices',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<InvoiceDetailController>(
      //                     InvoiceDetailController());
      //                 return const PayInvoice();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.creditCards,
      //           name: 'creditCards',
      //           builder: (BuildContext context, GoRouterState state) {
      //             Get.put<PaymentsController>(PaymentsController());
      //             return const CreditCards();
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.addNewCard,
      //               name: 'addNewCard',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<PaymentsController>(PaymentsController());
      //                 return const AddNewCard();
      //               },
      //             ),
      //           ]),
      //     ]),
      // ShellRoute(
      //   navigatorKey: authenticatonShellnavigatorKey,
      //   builder: (context, state, child) {
      //     Get.put<AuthenticationController>(AuthenticationController());
      //     return AuthenticationView(key: state.pageKey, child: child);
      //   },
      //   routes: [
      //     GoRoute(
      //       path: AppRoutesConst.login,
      //       name: 'login',
      //       pageBuilder: (BuildContext context, GoRouterState state) {
      //         return NoTransitionPage(
      //           child: LoginViews(
      //             key: state.pageKey,
      //           ),
      //         );
      //       },
      //     ),
      //     GoRoute(
      //       path: AppRoutesConst.verifyPhone,
      //       name: 'verifyPhone',
      //       builder: (BuildContext context, GoRouterState state) {
      //         return VerifyPhoneView(
      //           key: state.pageKey,
      //         );
      //       },
      //     ),
      //     GoRoute(
      //       path: AppRoutesConst.createAccount,
      //       name: 'createAccount',
      //       builder: (BuildContext context, GoRouterState state) {
      //         return CreateAccountView(
      //           key: state.pageKey,
      //         );
      //       },
      //     ),
      //     GoRoute(
      //       path: AppRoutesConst.selectUserLocation,
      //       name: 'selectUserLocation',
      //       builder: (BuildContext context, GoRouterState state) {
      //         return SelectUserLocationView(
      //           key: state.pageKey,
      //         );
      //       },
      //     ),
      //     GoRoute(
      //       path: AppRoutesConst.confirmEmail,
      //       name: 'accountConfirmation',
      //       builder: (BuildContext context, GoRouterState state) {
      //         return ConfirmEmailView(
      //           key: state.pageKey,
      //         );
      //       },
      //     ),
      //   ],
      // ),
      // GoRoute(
      //   path: AppRoutesConst.addproperty,
      //   name: 'addproperty',
      //   pageBuilder: (BuildContext context, GoRouterState state) {
      //     Get.put<AddPropertyController>(AddPropertyController());
      //     return const NoTransitionPage(child: AddPropertyView());
      //   },
      // ),
      // GoRoute(
      //   path: AppRoutesConst.forgetPassword,
      //   name: 'forgetPassword',
      //   builder: (BuildContext context, GoRouterState state) {
      //     Get.put<ForgetPasswordController>(ForgetPasswordController());
      //     return const ForgetPasswordView();
      //   },
      // ),
      // ShellRoute(
      //     navigatorKey: mainShellnavigatorKey,
      //     builder: (context, state, child) {
      //       return NavigationView(key: state.pageKey, child: child);
      //     },
      //     routes: [
      //       GoRoute(
      //           path: AppRoutesConst.home,
      //           name: 'home',
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             Get.put<HomeController>(HomeController());
      //
      //             return NoTransitionPage(
      //               child: HomeView(
      //                 key: state.pageKey,
      //               ),
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.propertyDetails,
      //               name: 'propertyDetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<PropertyDetailController>(
      //                     PropertyDetailController());
      //                 return const PropertyDetailView();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //           path: AppRoutesConst.search,
      //           name: 'search',
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             Get.put<PropertySearchController>(PropertySearchController());
      //             return NoTransitionPage(
      //               child: PropertySearchView(
      //                 key: state.pageKey,
      //               ),
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.propertyDetails,
      //               name: 'searchPropertyDetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<PropertyDetailController>(
      //                     PropertyDetailController());
      //                 return const PropertyDetailView();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //         path: AppRoutesConst.wishList,
      //         name: 'wishList',
      //         pageBuilder: (BuildContext context, GoRouterState state) {
      //           Get.put<WishListController>(WishListController());
      //
      //           return NoTransitionPage(
      //             child: WishListView(
      //               key: state.pageKey,
      //             ),
      //           );
      //         },
      //       ),
      //       GoRoute(
      //           path: AppRoutesConst.properties,
      //           name: 'properties',
      //           pageBuilder: (BuildContext context, GoRouterState state) {
      //             Get.put<PropertiesController>(PropertiesController());
      //             return NoTransitionPage(
      //               child: PropertiesView(
      //                 key: state.pageKey,
      //               ),
      //             );
      //           },
      //           routes: [
      //             GoRoute(
      //               path: AppRoutesConst.landlordPropertyDetails,
      //               name: 'landlordPropertyDetails',
      //               builder: (BuildContext context, GoRouterState state) {
      //                 Get.put<PropertyDetailController>(
      //                     PropertyDetailController());
      //                 return const PropertyDetailView();
      //               },
      //             ),
      //           ]),
      //       GoRoute(
      //         path: AppRoutesConst.calendar,
      //         name: 'calendar',
      //         pageBuilder: (BuildContext context, GoRouterState state) {
      //           Get.put<CalendarController>(CalendarController());
      //           return NoTransitionPage(
      //             child: CalendarView(
      //               key: state.pageKey,
      //             ),
      //           );
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.inbox,
      //         name: 'inbox',
      //         pageBuilder: (BuildContext context, GoRouterState state) {
      //           Get.put<InboxController>(InboxController());
      //           return NoTransitionPage(
      //             child: InboxView(
      //               key: state.pageKey,
      //             ),
      //           );
      //         },
      //       ),
      //       GoRoute(
      //         path: AppRoutesConst.profile,
      //         name: 'profile',
      //         pageBuilder: (BuildContext context, GoRouterState state) {
      //           Get.put<ProfileController>(ProfileController());
      //           return NoTransitionPage(
      //             child: ProfileView(
      //               key: state.pageKey,
      //             ),
      //           );
      //         },
      //       ),
      //     ]),
      ShellRoute(
          navigatorKey: addItemToCArtNavigatorKey,
          builder: (context, state, child) {
            Get.put<AddToCartController>(AddToCartController());
            return AddToCartView(key: state.pageKey);
          },
          routes: [
            GoRoute(
              path: AppRoutesConst.addToCart,
              name: 'addToCart',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                    child: AddToCartView(
                  key: state.pageKey,
                ));
              },
            ),
          ]),
      ShellRoute(
          navigatorKey: landingShellnavigatorKey,
          builder: (context, state, child) {
            Get.put<LandingController>(LandingController());
            return LandingView(key: state.pageKey, child: child);
          },
          routes: [
            GoRoute(
              path: AppRoutesConst.landingHome,
              name: 'landingHome',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                    child: SelectionArea(
                  child: LandingHome(
                    key: state.pageKey,
                  ),
                ));
              },
            ),
            GoRoute(
              path: AppRoutesConst.landingFeatures,
              name: 'landingMenu',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: LandingFeatures(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.landingContacts,
              name: 'landingContacts',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: LandingContacts(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.landingAboutUs,
              name: 'AboutUs',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: LandingAboutUs(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.landingLandlord,
              name: 'landingGallery',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: LandingLandlord(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.downloadApp,
              name: 'downloadApp',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: DownloadApp(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.subMenu,
              name: 'subMenu',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: LandingMenu(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
            GoRoute(
              path: AppRoutesConst.itemDetails,
              name: 'itemDetails',
              pageBuilder: (BuildContext context, GoRouterState state) {
                return NoTransitionPage(
                  child: SelectionArea(
                    child: ItemDetail(
                      key: state.pageKey,
                    ),
                  ),
                );
              },
            ),
          ])
    ]);
