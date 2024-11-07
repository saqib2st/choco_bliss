class AppUrls {
  // static String baseURL = "https://staginginnorent.6lgx.com/api";
  static String baseURL =
      "https://devinnorent.6lgx.com/api"; // For dev environment
  //  static String baseImageURL = "https://staginginnorent.6lgx.com/storage/";
  static String baseImageURL = "https://devinnorent.6lgx.com/storage/";
  static String imageReplacementURL = "no_image_found.jpg";

  static String loginURL = "$baseURL/login";
  static String logoutURL = "$baseURL/logout";

  //switchProfile
  static String switchProfileURL = "$baseURL/update-profile";
  static String updateProfile = "$baseURL/update-profile";

  static String singUpStep1URL = "$baseURL/signup-step1";
  static String singUpStep2URL = "$baseURL/signup-step2";
  static String singUpStep3URL = "$baseURL/signup-step3";
  static String confirmEmailUrl = "$baseURL/confirm-email";

  static String forgotPasswordURL = "$baseURL/forget-password-request";
  static String verifyAccountURL = "$baseURL/verify-account";
  static String getProfileURL = "$baseURL/get-profile";

  //properties
  static String getPropertiesByTypeURL = "$baseURL/get-spaces-by-type";
  static String getTennatHomeURL = "$baseURL/homepage-spaces";
  static String getPropertiesSearchURL = "$baseURL/spaces-search";
  static String getSlotsPropertiesURL = "$baseURL/calendar-spaces";

  static String addPropertiesURL = "$baseURL/spaces";

  //reviews
  static String getUserReviewsURL = "$baseURL/get-review";
  static String addUserReviewsURL = "$baseURL/add-review";
  static String deleteReviewsURL = "$baseURL/delete-review";
  static String getReviewDetailURL = "$baseURL/review-detail";
  static String getTenantsListlURL = "$baseURL/get-tenants";
  static String getTenantPropertieslURL = "$baseURL/get-tenant-properties";

  //agreements
  static String getUserAgreementsURL = "$baseURL/get-agreements";
  static String agreementsURL = "$baseURL/agreement";
  static String getAgreementDetailURL = "$baseURL/get-agreement-detail";
  static String sendAgreementURL = "$baseURL/send-agreement";

  //chatList
  static String fetchUserChatListURL = "$baseURL/chat-list";

  //messages
  static String getMessagesURL = "$baseURL/get-chat";

  static String sendMessageURL = "$baseURL/message";

  //favourites
  static String getFavouritesURL = "$baseURL/get-favorites";
  static String addFavouritesURL = "$baseURL/favorite";
  static String removeFavouriteURL = "$baseURL/favorite/remove";

  // issues/maintenance
  static String getIssuesURL = "$baseURL/get-issues";
  static String issuesDetailURL = "$baseURL/issues-detail";

  static String deleteIssueURL = "$baseURL/issue";
  static String markIssueFixedURL = "$baseURL/make-as-fixed";

  static String addIssueURL = "$baseURL/issue";
  static String editIssueURL = "$baseURL/issue";

  // booked visits
  static String getBookedVisitsURL = "$baseURL/get-visits";
  static String cancelBookedVisit = "$baseURL/cancel-archive-visit";
  static String addVisit = "$baseURL/add-visit";
  static String visitDetails = "$baseURL/visit-detail";

  // Make offer
  static String makeOfferUrl = "$baseURL/add-offer";

  //Send verification code
  static String sendVerificationCode = "$baseURL/send-verification-code";

  // offers
  static String getOffersURL = "$baseURL/get-offers";
  static String updateOfferURL = "$baseURL/update-offer";
  static String makeAnOfferURL = "$baseURL/add-offer";
  static String offerDetailURL = "$baseURL/offer-detail";

  // payments
  static String getAllCardURL = "$baseURL/get-cards";
  static String addNewCardURL = "$baseURL/add-card-detail";
  static String updateCardURL = "$baseURL/update-card-detail";
  static String makeAsPrimaryCardURL = "$baseURL/make-as-primary";
  static String deleteCardURL = "$baseURL/delete-card";

  // deposits
  static String saveDepositURL = "$baseURL/save-deposit";

  // invoices

  static String getAllInvoicesURL = "$baseURL/get-invoices";
  static String saveInvoiceURL = "$baseURL/save-invoice";
  static String invoiceDetailsURL = "$baseURL/invoice-detail";
  static String sendInvoiceURL = "$baseURL/send-invoice";
  static String payInvoiceURL = "$baseURL/pay-invoice";

  // save search
  static String saveSearchURL = "$baseURL/search";
  static String updateSearchURL = "$baseURL/update-search";

  static String getSavedSearchURL = "$baseURL/get-searches";

  //landlord apis
  static String landlordHomeDataURL = "$baseURL/get-home-data";

  // get amenities
  static String getAmenitiesURL = "$baseURL/get-amenities";

  // get amenities
  static String getStaticDataURL = "$baseURL/get-data";

  // add timeslot
  static String addTimeslotURL = "$baseURL/timeslot";

  // get time slot
  static String getTimeslotURL = "$baseURL/get-time-slot";

  // get account holder
  static String getAccountHoldersURL = "$baseURL/get-account-holder";

  // add transactions
  static String getTransactions = "$baseURL/get-transactions";
  static String getTransactionByProperty = "$baseURL/income-by-property";

  // add payout details
  static String addPayoutDetailsURL = "$baseURL/add-payout-detail";
  static String addPayHolderURL = "$baseURL/add-pay-holder";
  static String addAccountHoldersURL = "$baseURL/get-account-holder";
  static String getPayoutDetailsURL = "$baseURL/get-payout-detail";
  static String getPayoutsURL = "$baseURL/get-payout";

  static String getPlaces = "$baseURL/get-places";

  // add property details
  static String propertyDetails = "$baseURL/spaces-detail";

  //resend code
  static String resendCode = "$baseURL/send-verification-code";
  static String verifyUser = "$baseURL/verify-user";

  //reset password
  static String forgetPasswordRequest = "$baseURL/forget-password-request";
  static String resetPasswordRequest = "$baseURL/reset-password";

  //contact us
  static String contactEmail = "$baseURL/contact-email";
}
