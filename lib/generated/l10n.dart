// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Choose your language`
  String get chooseAppLanguage {
    return Intl.message(
      'Choose your language',
      name: 'chooseAppLanguage',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabic {
    return Intl.message(
      'العربية',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Easy Property and Payment Management`
  String get onBoardingTitle1 {
    return Intl.message(
      'Easy Property and Payment Management',
      name: 'onBoardingTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Whether you're a property owner or a tenant, you can now efficiently and transparently track all financial transactions.`
  String get onBoardingSubtitle1 {
    return Intl.message(
      'Whether you\'re a property owner or a tenant, you can now efficiently and transparently track all financial transactions.',
      name: 'onBoardingSubtitle1',
      desc: '',
      args: [],
    );
  }

  /// `Submitting Complaints and Service Requests`
  String get onBoardingTitle2 {
    return Intl.message(
      'Submitting Complaints and Service Requests',
      name: 'onBoardingTitle2',
      desc: '',
      args: [],
    );
  }

  /// `With ease. A request tracking system ensures efficient monitoring of your request's progress.`
  String get onBoardingSubtitle2 {
    return Intl.message(
      'With ease. A request tracking system ensures efficient monitoring of your request\'s progress.',
      name: 'onBoardingSubtitle2',
      desc: '',
      args: [],
    );
  }

  /// `Enhancing Communication between Owners and Tenants`
  String get onBoardingTitle3 {
    return Intl.message(
      'Enhancing Communication between Owners and Tenants',
      name: 'onBoardingTitle3',
      desc: '',
      args: [],
    );
  }

  /// `Direct and effective communication between owners and tenants to address inquiries and coordinate faster.`
  String get onBoardingSubtitle3 {
    return Intl.message(
      'Direct and effective communication between owners and tenants to address inquiries and coordinate faster.',
      name: 'onBoardingSubtitle3',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueToNext {
    return Intl.message(
      'Continue',
      name: 'continueToNext',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get enterYourMobileNumber {
    return Intl.message(
      'Enter your mobile number',
      name: 'enterYourMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fillField {
    return Intl.message(
      'This field is required',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile number`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile number',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter at least 6 letters or numbers`
  String get passValidation {
    return Intl.message(
      'Please enter at least 6 letters or numbers',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `Bills`
  String get bills {
    return Intl.message(
      'Bills',
      name: 'bills',
      desc: '',
      args: [],
    );
  }

  /// `Tickets`
  String get tickets {
    return Intl.message(
      'Tickets',
      name: 'tickets',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Account Info`
  String get accountInfo {
    return Intl.message(
      'Account Info',
      name: 'accountInfo',
      desc: '',
      args: [],
    );
  }

  /// `You have no notifications`
  String get emptyNotifications {
    return Intl.message(
      'You have no notifications',
      name: 'emptyNotifications',
      desc: '',
      args: [],
    );
  }

  /// `You have no invoices`
  String get emptyInvoices {
    return Intl.message(
      'You have no invoices',
      name: 'emptyInvoices',
      desc: '',
      args: [],
    );
  }

  /// `When invoices are issued, they will appear here`
  String get emptyInvoicesSubTitle {
    return Intl.message(
      'When invoices are issued, they will appear here',
      name: 'emptyInvoicesSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Rate application`
  String get rateApp {
    return Intl.message(
      'Rate application',
      name: 'rateApp',
      desc: '',
      args: [],
    );
  }

  /// `Help and support`
  String get helpAndSupport {
    return Intl.message(
      'Help and support',
      name: 'helpAndSupport',
      desc: '',
      args: [],
    );
  }

  /// `About application`
  String get aboutApp {
    return Intl.message(
      'About application',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `Terms and conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Change image`
  String get changeImage {
    return Intl.message(
      'Change image',
      name: 'changeImage',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get userName {
    return Intl.message(
      'User name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobileNumber {
    return Intl.message(
      'Mobile number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Contact us with mobile`
  String get contactUsWithMobile {
    return Intl.message(
      'Contact us with mobile',
      name: 'contactUsWithMobile',
      desc: '',
      args: [],
    );
  }

  /// `Contact us with email`
  String get contactUsWithEmail {
    return Intl.message(
      'Contact us with email',
      name: 'contactUsWithEmail',
      desc: '',
      args: [],
    );
  }

  /// `Send us using app`
  String get sendUsUsingApp {
    return Intl.message(
      'Send us using app',
      name: 'sendUsUsingApp',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout from the app?`
  String get areYouWantToLogout {
    return Intl.message(
      'Are you sure you want to logout from the app?',
      name: 'areYouWantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `Exit`
  String get exit {
    return Intl.message(
      'Exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filterBy {
    return Intl.message(
      'Filter by',
      name: 'filterBy',
      desc: '',
      args: [],
    );
  }

  /// `Ticket details`
  String get ticketDetails {
    return Intl.message(
      'Ticket details',
      name: 'ticketDetails',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Property Owner`
  String get propertyOwner {
    return Intl.message(
      'Property Owner',
      name: 'propertyOwner',
      desc: '',
      args: [],
    );
  }

  /// `Open tickets`
  String get openTickets {
    return Intl.message(
      'Open tickets',
      name: 'openTickets',
      desc: '',
      args: [],
    );
  }

  /// `Annual rent`
  String get annualRent {
    return Intl.message(
      'Annual rent',
      name: 'annualRent',
      desc: '',
      args: [],
    );
  }

  /// `Tenants count`
  String get tenantsCount {
    return Intl.message(
      'Tenants count',
      name: 'tenantsCount',
      desc: '',
      args: [],
    );
  }

  /// `Units count`
  String get unitsCount {
    return Intl.message(
      'Units count',
      name: 'unitsCount',
      desc: '',
      args: [],
    );
  }

  /// `My Real Estate`
  String get myRealEstate {
    return Intl.message(
      'My Real Estate',
      name: 'myRealEstate',
      desc: '',
      args: [],
    );
  }

  /// `Add unit`
  String get addUnit {
    return Intl.message(
      'Add unit',
      name: 'addUnit',
      desc: '',
      args: [],
    );
  }

  /// `Add building`
  String get addBuilding {
    return Intl.message(
      'Add building',
      name: 'addBuilding',
      desc: '',
      args: [],
    );
  }

  /// `Instrument Number`
  String get instrumentNumber {
    return Intl.message(
      'Instrument Number',
      name: 'instrumentNumber',
      desc: '',
      args: [],
    );
  }

  /// `National real estate address`
  String get unitAddress {
    return Intl.message(
      'National real estate address',
      name: 'unitAddress',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Street`
  String get street {
    return Intl.message(
      'Street',
      name: 'street',
      desc: '',
      args: [],
    );
  }

  /// `Unit Number`
  String get unitNumber {
    return Intl.message(
      'Unit Number',
      name: 'unitNumber',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postalCode {
    return Intl.message(
      'Postal Code',
      name: 'postalCode',
      desc: '',
      args: [],
    );
  }

  /// `Add property`
  String get addProperty {
    return Intl.message(
      'Add property',
      name: 'addProperty',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Subnumber`
  String get subNumber {
    return Intl.message(
      'Subnumber',
      name: 'subNumber',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get validateEmptyMessage {
    return Intl.message(
      'This field is required',
      name: 'validateEmptyMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unit Information`
  String get informationUnit {
    return Intl.message(
      'Unit Information',
      name: 'informationUnit',
      desc: '',
      args: [],
    );
  }

  /// `Unit Name`
  String get unitName {
    return Intl.message(
      'Unit Name',
      name: 'unitName',
      desc: '',
      args: [],
    );
  }

  /// `Monthly Unit Rent`
  String get unitRent {
    return Intl.message(
      'Monthly Unit Rent',
      name: 'unitRent',
      desc: '',
      args: [],
    );
  }

  /// `Rent Commencement Date`
  String get unitDate {
    return Intl.message(
      'Rent Commencement Date',
      name: 'unitDate',
      desc: '',
      args: [],
    );
  }

  /// `Electricity Bill Account Number`
  String get electricityAccount {
    return Intl.message(
      'Electricity Bill Account Number',
      name: 'electricityAccount',
      desc: '',
      args: [],
    );
  }

  /// `Water Bill Account Number`
  String get waterAccount {
    return Intl.message(
      'Water Bill Account Number',
      name: 'waterAccount',
      desc: '',
      args: [],
    );
  }

  /// `Unit Specifications`
  String get unitSpecifications {
    return Intl.message(
      'Unit Specifications',
      name: 'unitSpecifications',
      desc: '',
      args: [],
    );
  }

  /// `Unit Area in Square Meters`
  String get unitSpace {
    return Intl.message(
      'Unit Area in Square Meters',
      name: 'unitSpace',
      desc: '',
      args: [],
    );
  }

  /// `Number of Rooms`
  String get roomsCount {
    return Intl.message(
      'Number of Rooms',
      name: 'roomsCount',
      desc: '',
      args: [],
    );
  }

  /// `Number of Air Conditioners`
  String get conditionersCount {
    return Intl.message(
      'Number of Air Conditioners',
      name: 'conditionersCount',
      desc: '',
      args: [],
    );
  }

  /// `Number of Bathrooms`
  String get bathroomsCount {
    return Intl.message(
      'Number of Bathrooms',
      name: 'bathroomsCount',
      desc: '',
      args: [],
    );
  }

  /// `Has a Living Room`
  String get thereIsLounge {
    return Intl.message(
      'Has a Living Room',
      name: 'thereIsLounge',
      desc: '',
      args: [],
    );
  }

  /// `Has a Kitchen`
  String get thereIsKitchen {
    return Intl.message(
      'Has a Kitchen',
      name: 'thereIsKitchen',
      desc: '',
      args: [],
    );
  }

  /// `Property`
  String get property {
    return Intl.message(
      'Property',
      name: 'property',
      desc: '',
      args: [],
    );
  }

  /// `Create unit`
  String get createUnit {
    return Intl.message(
      'Create unit',
      name: 'createUnit',
      desc: '',
      args: [],
    );
  }

  /// `Units`
  String get units {
    return Intl.message(
      'Units',
      name: 'units',
      desc: '',
      args: [],
    );
  }

  /// `Choose property`
  String get chooseProperty {
    return Intl.message(
      'Choose property',
      name: 'chooseProperty',
      desc: '',
      args: [],
    );
  }

  /// `Add new property`
  String get addNewProperty {
    return Intl.message(
      'Add new property',
      name: 'addNewProperty',
      desc: '',
      args: [],
    );
  }

  /// `Recent tickets`
  String get recentTickets {
    return Intl.message(
      'Recent tickets',
      name: 'recentTickets',
      desc: '',
      args: [],
    );
  }

  /// `Reviewing`
  String get reviewing {
    return Intl.message(
      'Reviewing',
      name: 'reviewing',
      desc: '',
      args: [],
    );
  }

  /// `Solved`
  String get solved {
    return Intl.message(
      'Solved',
      name: 'solved',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get processing {
    return Intl.message(
      'Processing',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `Service`
  String get service {
    return Intl.message(
      'Service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Complain`
  String get complain {
    return Intl.message(
      'Complain',
      name: 'complain',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Show details`
  String get showDetails {
    return Intl.message(
      'Show details',
      name: 'showDetails',
      desc: '',
      args: [],
    );
  }

  /// `Total rent`
  String get totalRent {
    return Intl.message(
      'Total rent',
      name: 'totalRent',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `SAR/Month`
  String get monthSar {
    return Intl.message(
      'SAR/Month',
      name: 'monthSar',
      desc: '',
      args: [],
    );
  }

  /// `Next rent collection date`
  String get rentDate {
    return Intl.message(
      'Next rent collection date',
      name: 'rentDate',
      desc: '',
      args: [],
    );
  }

  /// `Update unit information`
  String get unitInformationEdit {
    return Intl.message(
      'Update unit information',
      name: 'unitInformationEdit',
      desc: '',
      args: [],
    );
  }

  /// `Rent`
  String get rent {
    return Intl.message(
      'Rent',
      name: 'rent',
      desc: '',
      args: [],
    );
  }

  /// `Tenant`
  String get tenant {
    return Intl.message(
      'Tenant',
      name: 'tenant',
      desc: '',
      args: [],
    );
  }

  /// `Tenant information`
  String get tenantInformation {
    return Intl.message(
      'Tenant information',
      name: 'tenantInformation',
      desc: '',
      args: [],
    );
  }

  /// `Call`
  String get call {
    return Intl.message(
      'Call',
      name: 'call',
      desc: '',
      args: [],
    );
  }

  /// `Send Mail`
  String get sendMail {
    return Intl.message(
      'Send Mail',
      name: 'sendMail',
      desc: '',
      args: [],
    );
  }

  /// `Next invoices`
  String get nextInvoices {
    return Intl.message(
      'Next invoices',
      name: 'nextInvoices',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get invoice {
    return Intl.message(
      'Invoice',
      name: 'invoice',
      desc: '',
      args: [],
    );
  }

  /// `Water`
  String get water {
    return Intl.message(
      'Water',
      name: 'water',
      desc: '',
      args: [],
    );
  }

  /// `Show all invoices`
  String get showAllInvoices {
    return Intl.message(
      'Show all invoices',
      name: 'showAllInvoices',
      desc: '',
      args: [],
    );
  }

  /// `Show all tickets`
  String get showAllTickets {
    return Intl.message(
      'Show all tickets',
      name: 'showAllTickets',
      desc: '',
      args: [],
    );
  }

  /// `Latest property tickets`
  String get latestPropertyTickets {
    return Intl.message(
      'Latest property tickets',
      name: 'latestPropertyTickets',
      desc: '',
      args: [],
    );
  }

  /// `Property invoices`
  String get propertyInvoices {
    return Intl.message(
      'Property invoices',
      name: 'propertyInvoices',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Property tickets`
  String get propertyTickets {
    return Intl.message(
      'Property tickets',
      name: 'propertyTickets',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `My tickets`
  String get myTickets {
    return Intl.message(
      'My tickets',
      name: 'myTickets',
      desc: '',
      args: [],
    );
  }

  /// `You have no tickets pending review`
  String get noTicketsReview {
    return Intl.message(
      'You have no tickets pending review',
      name: 'noTicketsReview',
      desc: '',
      args: [],
    );
  }

  /// `You have no tickets`
  String get noTickets {
    return Intl.message(
      'You have no tickets',
      name: 'noTickets',
      desc: '',
      args: [],
    );
  }

  /// `You have no tickets in processing`
  String get noTicketsProcess {
    return Intl.message(
      'You have no tickets in processing',
      name: 'noTicketsProcess',
      desc: '',
      args: [],
    );
  }

  /// `You have no tickets solved`
  String get noTicketsSolved {
    return Intl.message(
      'You have no tickets solved',
      name: 'noTicketsSolved',
      desc: '',
      args: [],
    );
  }

  /// `You have no tickets`
  String get emptyTickets {
    return Intl.message(
      'You have no tickets',
      name: 'emptyTickets',
      desc: '',
      args: [],
    );
  }

  /// `Ticket ID`
  String get ticketId {
    return Intl.message(
      'Ticket ID',
      name: 'ticketId',
      desc: '',
      args: [],
    );
  }

  /// `Ticket content`
  String get ticketContent {
    return Intl.message(
      'Ticket content',
      name: 'ticketContent',
      desc: '',
      args: [],
    );
  }

  /// `Ticket type`
  String get ticketType {
    return Intl.message(
      'Ticket type',
      name: 'ticketType',
      desc: '',
      args: [],
    );
  }

  /// `Attachments`
  String get attachments {
    return Intl.message(
      'Attachments',
      name: 'attachments',
      desc: '',
      args: [],
    );
  }

  /// `Date the ticket was created`
  String get ticketCreatedDate {
    return Intl.message(
      'Date the ticket was created',
      name: 'ticketCreatedDate',
      desc: '',
      args: [],
    );
  }

  /// `Date of last update`
  String get ticketUpdatedDate {
    return Intl.message(
      'Date of last update',
      name: 'ticketUpdatedDate',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get approve {
    return Intl.message(
      'Approve',
      name: 'approve',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Choose from the following list`
  String get chooseFromList {
    return Intl.message(
      'Choose from the following list',
      name: 'chooseFromList',
      desc: '',
      args: [],
    );
  }

  /// `Contact the tenant`
  String get contactTenant {
    return Intl.message(
      'Contact the tenant',
      name: 'contactTenant',
      desc: '',
      args: [],
    );
  }

  /// `Upload the invoice`
  String get uploadInvoice {
    return Intl.message(
      'Upload the invoice',
      name: 'uploadInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Change ticket status to 'Resolved'`
  String get changeStatusResolved {
    return Intl.message(
      'Change ticket status to \'Resolved\'',
      name: 'changeStatusResolved',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contact {
    return Intl.message(
      'Contact',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Repaired`
  String get repaired {
    return Intl.message(
      'Repaired',
      name: 'repaired',
      desc: '',
      args: [],
    );
  }

  /// `View invoice`
  String get viewInvoice {
    return Intl.message(
      'View invoice',
      name: 'viewInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to change the ticket status to 'Resolved'?`
  String get solvedAlertTitle {
    return Intl.message(
      'Are you sure you want to change the ticket status to \'Resolved\'?',
      name: 'solvedAlertTitle',
      desc: '',
      args: [],
    );
  }

  /// `Once you confirm that a ticket is resolved, you will not be able to make any edits or updates to its contents.`
  String get solvedAlertSubtitle {
    return Intl.message(
      'Once you confirm that a ticket is resolved, you will not be able to make any edits or updates to its contents.',
      name: 'solvedAlertSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Solved`
  String get solvedAlertOk {
    return Intl.message(
      'Solved',
      name: 'solvedAlertOk',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get solvedAlertCancel {
    return Intl.message(
      'Cancel',
      name: 'solvedAlertCancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Created At`
  String get createdAt {
    return Intl.message(
      'Created At',
      name: 'createdAt',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Ticket status`
  String get ticketStatus {
    return Intl.message(
      'Ticket status',
      name: 'ticketStatus',
      desc: '',
      args: [],
    );
  }

  /// `Delete All`
  String get deleteAll {
    return Intl.message(
      'Delete All',
      name: 'deleteAll',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Cancel ticket`
  String get cancelTicket {
    return Intl.message(
      'Cancel ticket',
      name: 'cancelTicket',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to cancel the ticket?`
  String get cancelTicketTitle {
    return Intl.message(
      'Do you want to cancel the ticket?',
      name: 'cancelTicketTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel the ticket?`
  String get cancelTicketSubtitle {
    return Intl.message(
      'Are you sure you want to cancel the ticket?',
      name: 'cancelTicketSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Space`
  String get space {
    return Intl.message(
      'Space',
      name: 'space',
      desc: '',
      args: [],
    );
  }

  /// `Rooms`
  String get rooms {
    return Intl.message(
      'Rooms',
      name: 'rooms',
      desc: '',
      args: [],
    );
  }

  /// `Lounge`
  String get lounge {
    return Intl.message(
      'Lounge',
      name: 'lounge',
      desc: '',
      args: [],
    );
  }

  /// `Bathrooms`
  String get bathrooms {
    return Intl.message(
      'Bathrooms',
      name: 'bathrooms',
      desc: '',
      args: [],
    );
  }

  /// `Conditioner`
  String get conditioner {
    return Intl.message(
      'Conditioner',
      name: 'conditioner',
      desc: '',
      args: [],
    );
  }

  /// `Conditioners`
  String get conditioners {
    return Intl.message(
      'Conditioners',
      name: 'conditioners',
      desc: '',
      args: [],
    );
  }

  /// `Kitchen`
  String get kitchen {
    return Intl.message(
      'Kitchen',
      name: 'kitchen',
      desc: '',
      args: [],
    );
  }

  /// `Square meters`
  String get squareMeters {
    return Intl.message(
      'Square meters',
      name: 'squareMeters',
      desc: '',
      args: [],
    );
  }

  /// `Bedrooms`
  String get bedRooms {
    return Intl.message(
      'Bedrooms',
      name: 'bedRooms',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get there {
    return Intl.message(
      'Available',
      name: 'there',
      desc: '',
      args: [],
    );
  }

  /// `Unavailable`
  String get nothing {
    return Intl.message(
      'Unavailable',
      name: 'nothing',
      desc: '',
      args: [],
    );
  }

  /// `Service Request`
  String get serviceRequest {
    return Intl.message(
      'Service Request',
      name: 'serviceRequest',
      desc: '',
      args: [],
    );
  }

  /// `Submit Complaint`
  String get submitComplaint {
    return Intl.message(
      'Submit Complaint',
      name: 'submitComplaint',
      desc: '',
      args: [],
    );
  }

  /// `Explore the latest rental offers`
  String get exploreLatestRentalOffers {
    return Intl.message(
      'Explore the latest rental offers',
      name: 'exploreLatestRentalOffers',
      desc: '',
      args: [],
    );
  }

  /// `When you add a rental property, it will appear here`
  String get emptyTenantUnitTitle {
    return Intl.message(
      'When you add a rental property, it will appear here',
      name: 'emptyTenantUnitTitle',
      desc: '',
      args: [],
    );
  }

  /// `Next rent payment date: `
  String get nextRentPaymentDate {
    return Intl.message(
      'Next rent payment date: ',
      name: 'nextRentPaymentDate',
      desc: '',
      args: [],
    );
  }

  /// `Your Next Invoices`
  String get yourNextInvoices {
    return Intl.message(
      'Your Next Invoices',
      name: 'yourNextInvoices',
      desc: '',
      args: [],
    );
  }

  /// `Ticket sent successfully`
  String get ticketSentSuccessfullyTitle {
    return Intl.message(
      'Ticket sent successfully',
      name: 'ticketSentSuccessfullyTitle',
      desc: '',
      args: [],
    );
  }

  /// `One of our representatives will respond to you as soon as possible`
  String get ticketSentSuccessfullySubtitle {
    return Intl.message(
      'One of our representatives will respond to you as soon as possible',
      name: 'ticketSentSuccessfullySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `View the Ticket`
  String get viewTicket {
    return Intl.message(
      'View the Ticket',
      name: 'viewTicket',
      desc: '',
      args: [],
    );
  }

  /// `Choose Unit`
  String get chooseUnit {
    return Intl.message(
      'Choose Unit',
      name: 'chooseUnit',
      desc: '',
      args: [],
    );
  }

  /// `Select the unit for which you would like to open a ticket`
  String get chooseSpecificUnit {
    return Intl.message(
      'Select the unit for which you would like to open a ticket',
      name: 'chooseSpecificUnit',
      desc: '',
      args: [],
    );
  }

  /// `What type of ticket would you like to create?`
  String get chooseType {
    return Intl.message(
      'What type of ticket would you like to create?',
      name: 'chooseType',
      desc: '',
      args: [],
    );
  }

  /// `Choose the type of ticket you would like to create based on what your order will include.`
  String get chooseTypeSubtitle {
    return Intl.message(
      'Choose the type of ticket you would like to create based on what your order will include.',
      name: 'chooseTypeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Describe the service you would like to request and one of our representatives will respond to you within 24 hours.`
  String get serviceDescription {
    return Intl.message(
      'Describe the service you would like to request and one of our representatives will respond to you within 24 hours.',
      name: 'serviceDescription',
      desc: '',
      args: [],
    );
  }

  /// `Send the complaint you are facing and it will be answered within 24 hours`
  String get complainDescription {
    return Intl.message(
      'Send the complaint you are facing and it will be answered within 24 hours',
      name: 'complainDescription',
      desc: '',
      args: [],
    );
  }

  /// `Contact us and we will respond to you within 24 hours`
  String get otherDescription {
    return Intl.message(
      'Contact us and we will respond to you within 24 hours',
      name: 'otherDescription',
      desc: '',
      args: [],
    );
  }

  /// `Write the ticket content and add photos`
  String get ticketContentDescription {
    return Intl.message(
      'Write the ticket content and add photos',
      name: 'ticketContentDescription',
      desc: '',
      args: [],
    );
  }

  /// `Upload Image`
  String get uploadImage {
    return Intl.message(
      'Upload Image',
      name: 'uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Write the content of the ticket`
  String get writeTicketContent {
    return Intl.message(
      'Write the content of the ticket',
      name: 'writeTicketContent',
      desc: '',
      args: [],
    );
  }

  /// `Rate`
  String get rate {
    return Intl.message(
      'Rate',
      name: 'rate',
      desc: '',
      args: [],
    );
  }

  /// `Evaluation of experience`
  String get evaluationExperience {
    return Intl.message(
      'Evaluation of experience',
      name: 'evaluationExperience',
      desc: '',
      args: [],
    );
  }

  /// `Share your rating with us`
  String get shareRating {
    return Intl.message(
      'Share your rating with us',
      name: 'shareRating',
      desc: '',
      args: [],
    );
  }

  /// `Sharing your evaluation gives us the opportunity to develop and improve our services`
  String get shareRatingDescription {
    return Intl.message(
      'Sharing your evaluation gives us the opportunity to develop and improve our services',
      name: 'shareRatingDescription',
      desc: '',
      args: [],
    );
  }

  /// `Write us your opinion (optional)`
  String get writeYourOpinion {
    return Intl.message(
      'Write us your opinion (optional)',
      name: 'writeYourOpinion',
      desc: '',
      args: [],
    );
  }

  /// `You have no units`
  String get noUnits {
    return Intl.message(
      'You have no units',
      name: 'noUnits',
      desc: '',
      args: [],
    );
  }

  /// `SAR/Year`
  String get yearSar {
    return Intl.message(
      'SAR/Year',
      name: 'yearSar',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
