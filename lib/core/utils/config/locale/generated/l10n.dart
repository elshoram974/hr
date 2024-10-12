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

  /// `Your session has expired or you are not authorized. Please log in again.`
  String get unauthorizedError {
    return Intl.message(
      'Your session has expired or you are not authorized. Please log in again.',
      name: 'unauthorizedError',
      desc: '',
      args: [],
    );
  }

  /// `There is a problem with the server. Try again later.`
  String get thereIsProblemWithServerTryAgainLater {
    return Intl.message(
      'There is a problem with the server. Try again later.',
      name: 'thereIsProblemWithServerTryAgainLater',
      desc: '',
      args: [],
    );
  }

  /// `The server took too long to respond.`
  String get serverTookTooLongToRespond {
    return Intl.message(
      'The server took too long to respond.',
      name: 'serverTookTooLongToRespond',
      desc: '',
      args: [],
    );
  }

  /// `The SSL certificate is not trusted.`
  String get sslCertificateNotTrusted {
    return Intl.message(
      'The SSL certificate is not trusted.',
      name: 'sslCertificateNotTrusted',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get unknownErrorOccurred {
    return Intl.message(
      'An unknown error occurred.',
      name: 'unknownErrorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `The client took too long to respond.`
  String get clientTookTooLong {
    return Intl.message(
      'The client took too long to respond.',
      name: 'clientTookTooLong',
      desc: '',
      args: [],
    );
  }

  /// `The server took too long to respond.`
  String get serverTookTooLong {
    return Intl.message(
      'The server took too long to respond.',
      name: 'serverTookTooLong',
      desc: '',
      args: [],
    );
  }

  /// `Connected to the internet`
  String get connectedToInternet {
    return Intl.message(
      'Connected to the internet',
      name: 'connectedToInternet',
      desc: '',
      args: [],
    );
  }

  /// `Enable Service`
  String get enableService {
    return Intl.message(
      'Enable Service',
      name: 'enableService',
      desc: '',
      args: [],
    );
  }

  /// `The location service on the device is disabled.`
  String get locationServiceDisabled {
    return Intl.message(
      'The location service on the device is disabled.',
      name: 'locationServiceDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Allow Location Access`
  String get grantLocationAccess {
    return Intl.message(
      'Allow Location Access',
      name: 'grantLocationAccess',
      desc: '',
      args: [],
    );
  }

  /// `Please grant permission to access your device's location`
  String get requestLocationPermission {
    return Intl.message(
      'Please grant permission to access your device\'s location',
      name: 'requestLocationPermission',
      desc: '',
      args: [],
    );
  }

  /// `Good bye...`
  String get goodbye {
    return Intl.message(
      'Good bye...',
      name: 'goodbye',
      desc: '',
      args: [],
    );
  }

  /// `successfully`
  String get successfully {
    return Intl.message(
      'successfully',
      name: 'successfully',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `out`
  String get outText {
    return Intl.message(
      'out',
      name: 'outText',
      desc: '',
      args: [],
    );
  }

  /// `in`
  String get inText {
    return Intl.message(
      'in',
      name: 'inText',
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

  /// `Logged`
  String get logged {
    return Intl.message(
      'Logged',
      name: 'logged',
      desc: '',
      args: [],
    );
  }

  /// `Time must be more than 60 minutes`
  String get timeMustBeMoreThan60Minutes {
    return Intl.message(
      'Time must be more than 60 minutes',
      name: 'timeMustBeMoreThan60Minutes',
      desc: '',
      args: [],
    );
  }

  /// `Please click here to log in`
  String get pleaseClickHereToLogin {
    return Intl.message(
      'Please click here to log in',
      name: 'pleaseClickHereToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Please click here to log out`
  String get pleaseClickHereToLogOut {
    return Intl.message(
      'Please click here to log out',
      name: 'pleaseClickHereToLogOut',
      desc: '',
      args: [],
    );
  }

  /// `Clock in to begin the shift`
  String get clockInToBeginTheShift {
    return Intl.message(
      'Clock in to begin the shift',
      name: 'clockInToBeginTheShift',
      desc: '',
      args: [],
    );
  }

  /// `Clock in to end the shift`
  String get clockInToEndTheShift {
    return Intl.message(
      'Clock in to end the shift',
      name: 'clockInToEndTheShift',
      desc: '',
      args: [],
    );
  }

  /// `Time of entry`
  String get timeOfEntry {
    return Intl.message(
      'Time of entry',
      name: 'timeOfEntry',
      desc: '',
      args: [],
    );
  }

  /// `Time of exit`
  String get timeOfExit {
    return Intl.message(
      'Time of exit',
      name: 'timeOfExit',
      desc: '',
      args: [],
    );
  }

  /// `Good morning`
  String get goodMorning {
    return Intl.message(
      'Good morning',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Hello, {userName}`
  String helloUserName(String userName) {
    return Intl.message(
      'Hello, $userName',
      name: 'helloUserName',
      desc: '',
      args: [userName],
    );
  }

  /// `Please log in to continue`
  String get loginToContinue {
    return Intl.message(
      'Please log in to continue',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Start Now`
  String get startNow {
    return Intl.message(
      'Start Now',
      name: 'startNow',
      desc: '',
      args: [],
    );
  }

  /// `Welcome...`
  String get welcome {
    return Intl.message(
      'Welcome...',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Human resources management`
  String get humanResourcesManagement {
    return Intl.message(
      'Human resources management',
      name: 'humanResourcesManagement',
      desc: '',
      args: [],
    );
  }

  /// `pageNumber must be bigger than 0`
  String get pageNumberMustBiggerThan0 {
    return Intl.message(
      'pageNumber must be bigger than 0',
      name: 'pageNumberMustBiggerThan0',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Needs synchronization`
  String get needsSynchronization {
    return Intl.message(
      'Needs synchronization',
      name: 'needsSynchronization',
      desc: '',
      args: [],
    );
  }

  /// `Created at {createdDate}`
  String createdAt(String createdDate) {
    return Intl.message(
      'Created at $createdDate',
      name: 'createdAt',
      desc: '',
      args: [createdDate],
    );
  }

  /// `Last update at {updatedDate}`
  String lastUpdatedAt(Object updatedDate) {
    return Intl.message(
      'Last update at $updatedDate',
      name: 'lastUpdatedAt',
      desc: '',
      args: [updatedDate],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Hi {personName}, What do you want to do now?`
  String HiPersonChooseWhatUWant(String personName) {
    return Intl.message(
      'Hi $personName, What do you want to do now?',
      name: 'HiPersonChooseWhatUWant',
      desc: '',
      args: [personName],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Page not found`
  String get pageNotFound {
    return Intl.message(
      'Page not found',
      name: 'pageNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Return back`
  String get returnBack {
    return Intl.message(
      'Return back',
      name: 'returnBack',
      desc: '',
      args: [],
    );
  }

  /// `Page '{pageName}' not found in routes`
  String pageNameNotFoundInRoutes(String pageName) {
    return Intl.message(
      'Page \'$pageName\' not found in routes',
      name: 'pageNameNotFoundInRoutes',
      desc: '',
      args: [pageName],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Show password`
  String get showPassword {
    return Intl.message(
      'Show password',
      name: 'showPassword',
      desc: '',
      args: [],
    );
  }

  /// `Hide password`
  String get hidePassword {
    return Intl.message(
      'Hide password',
      name: 'hidePassword',
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

  /// `Welcome back`
  String get welcomeBack {
    return Intl.message(
      'Welcome back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Enter your credentials to continue.`
  String get enterYourCredentialsToContinue {
    return Intl.message(
      'Enter your credentials to continue.',
      name: 'enterYourCredentialsToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get emailAddress {
    return Intl.message(
      'Email address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter email address`
  String get enterEmailAddress {
    return Intl.message(
      'Enter email address',
      name: 'enterEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `fill this field`
  String get fillField {
    return Intl.message(
      'fill this field',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Not same password`
  String get notSamePass {
    return Intl.message(
      'Not same password',
      name: 'notSamePass',
      desc: '',
      args: [],
    );
  }

  /// `Enter valid E-mail`
  String get enterValidEmail {
    return Intl.message(
      'Enter valid E-mail',
      name: 'enterValidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Can't be less than {min}`
  String cantBeLessThan(int min) {
    return Intl.message(
      'Can\'t be less than $min',
      name: 'cantBeLessThan',
      desc: '',
      args: [min],
    );
  }

  /// `Can't be more than {max}`
  String cantBeMoreThan(int max) {
    return Intl.message(
      'Can\'t be more than $max',
      name: 'cantBeMoreThan',
      desc: '',
      args: [max],
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

  /// `Enter the password`
  String get enterThePassword {
    return Intl.message(
      'Enter the password',
      name: 'enterThePassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password ? `
  String get forgetPassword {
    return Intl.message(
      'Forget password ? ',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Recover`
  String get recover {
    return Intl.message(
      'Recover',
      name: 'recover',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ? `
  String get doNotHaveAnAccount {
    return Intl.message(
      'Don\'t have an account ? ',
      name: 'doNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get rememberMe {
    return Intl.message(
      'Remember me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Create your own email`
  String get createYourOwnEmail {
    return Intl.message(
      'Create your own email',
      name: 'createYourOwnEmail',
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

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
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

  /// `Go back`
  String get goBack {
    return Intl.message(
      'Go back',
      name: 'goBack',
      desc: '',
      args: [],
    );
  }

  /// `Stay here`
  String get stayHere {
    return Intl.message(
      'Stay here',
      name: 'stayHere',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to return back`
  String get areYouSureYouWantToReturnBack {
    return Intl.message(
      'Are you sure you want to return back',
      name: 'areYouSureYouWantToReturnBack',
      desc: '',
      args: [],
    );
  }

  /// `If you return now, you will lose all data!`
  String get ifYouReturnNowYouWillLoseAllData {
    return Intl.message(
      'If you return now, you will lose all data!',
      name: 'ifYouReturnNowYouWillLoseAllData',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get passwordProvidedIsTooWeak {
    return Intl.message(
      'The password provided is too weak.',
      name: 'passwordProvidedIsTooWeak',
      desc: '',
      args: [],
    );
  }

  /// `Press again to exit`
  String get pressAgainToExit {
    return Intl.message(
      'Press again to exit',
      name: 'pressAgainToExit',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get accountAlreadyExistsForThatEmail {
    return Intl.message(
      'The account already exists for that email.',
      name: 'accountAlreadyExistsForThatEmail',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get noUserFoundForThatEmail {
    return Intl.message(
      'No user found for that email.',
      name: 'noUserFoundForThatEmail',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get wrongPasswordProvidedForThatUser {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'wrongPasswordProvidedForThatUser',
      desc: '',
      args: [],
    );
  }

  /// `The supplied auth credential is incorrect, malformed or has expired.`
  String get theSuppliedAuthCredentialIsIncorrect {
    return Intl.message(
      'The supplied auth credential is incorrect, malformed or has expired.',
      name: 'theSuppliedAuthCredentialIsIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
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
