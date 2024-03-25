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

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
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

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `my bills`
  String get bills {
    return Intl.message(
      'my bills',
      name: 'bills',
      desc: '',
      args: [],
    );
  }

  /// `my tickets`
  String get tickets {
    return Intl.message(
      'my tickets',
      name: 'tickets',
      desc: '',
      args: [],
    );
  }

  /// `more`
  String get more {
    return Intl.message(
      'more',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `notifications`
  String get notifications {
    return Intl.message(
      'notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `account info`
  String get accountInfo {
    return Intl.message(
      'account info',
      name: 'accountInfo',
      desc: '',
      args: [],
    );
  }

  /// `offers`
  String get offers {
    return Intl.message(
      'offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `language`
  String get language {
    return Intl.message(
      'language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `rate application`
  String get rateApp {
    return Intl.message(
      'rate application',
      name: 'rateApp',
      desc: '',
      args: [],
    );
  }

  /// `help and support`
  String get helpAndSupport {
    return Intl.message(
      'help and support',
      name: 'helpAndSupport',
      desc: '',
      args: [],
    );
  }

  /// `about application`
  String get aboutApp {
    return Intl.message(
      'about application',
      name: 'aboutApp',
      desc: '',
      args: [],
    );
  }

  /// `terms and conditions`
  String get termsAndConditions {
    return Intl.message(
      'terms and conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `logout`
  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `change image`
  String get changeImage {
    return Intl.message(
      'change image',
      name: 'changeImage',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get userName {
    return Intl.message(
      'user name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `mobile number`
  String get mobileNumber {
    return Intl.message(
      'mobile number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `change`
  String get change {
    return Intl.message(
      'change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `contact us with mobile`
  String get contactUsWithMobile {
    return Intl.message(
      'contact us with mobile',
      name: 'contactUsWithMobile',
      desc: '',
      args: [],
    );
  }

  /// `contact us with email`
  String get contactUsWithEmial {
    return Intl.message(
      'contact us with email',
      name: 'contactUsWithEmial',
      desc: '',
      args: [],
    );
  }

  /// `send us using app`
  String get SendUsUsingApp {
    return Intl.message(
      'send us using app',
      name: 'SendUsUsingApp',
      desc: '',
      args: [],
    );
  }

  /// `are you want to logout from the app`
  String get areYouWantToLogout {
    return Intl.message(
      'are you want to logout from the app',
      name: 'areYouWantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `exit`
  String get exit {
    return Intl.message(
      'exit',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `no`
  String get no {
    return Intl.message(
      'no',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `filter by`
  String get filterBy {
    return Intl.message(
      'filter by',
      name: 'filterBy',
      desc: '',
      args: [],
    );
  }

  /// `ticket details`
  String get ticketDetails {
    return Intl.message(
      'ticket details',
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

  /// `Ny Real Estate`
  String get myRealEstate {
    return Intl.message(
      'Ny Real Estate',
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

  /// `Unit Building Address`
  String get unitAddress {
    return Intl.message(
      'Unit Building Address',
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
  String get sreet {
    return Intl.message(
      'Street',
      name: 'sreet',
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
  String get thereIsLoungue {
    return Intl.message(
      'Has a Living Room',
      name: 'thereIsLoungue',
      desc: '',
      args: [],
    );
  }

  /// `Has a Kitchen`
  String get thereIsKitchecn {
    return Intl.message(
      'Has a Kitchen',
      name: 'thereIsKitchecn',
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

  /// `reviewing`
  String get reviewing {
    return Intl.message(
      'reviewing',
      name: 'reviewing',
      desc: '',
      args: [],
    );
  }

  /// `solved`
  String get solved {
    return Intl.message(
      'solved',
      name: 'solved',
      desc: '',
      args: [],
    );
  }

  /// `canceled`
  String get canceled {
    return Intl.message(
      'canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `processing`
  String get processing {
    return Intl.message(
      'processing',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `service`
  String get service {
    return Intl.message(
      'service',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `complain`
  String get complain {
    return Intl.message(
      'complain',
      name: 'complain',
      desc: '',
      args: [],
    );
  }

  /// `other`
  String get other {
    return Intl.message(
      'other',
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

  /// `update unit information`
  String get unitInfromationEdit {
    return Intl.message(
      'update unit information',
      name: 'unitInfromationEdit',
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

  /// `Bills`
  String get biils {
    return Intl.message(
      'Bills',
      name: 'biils',
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

  /// `Show all tikcets`
  String get showAllTickets {
    return Intl.message(
      'Show all tikcets',
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
