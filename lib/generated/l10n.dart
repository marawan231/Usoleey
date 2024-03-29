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
