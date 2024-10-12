// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(personName) =>
      "Hi ${personName}, What do you want to do now?";

  static String m1(min) => "Can\'t be less than ${min}";

  static String m2(max) => "Can\'t be more than ${max}";

  static String m3(createdDate) => "Created at ${createdDate}";

  static String m4(userName) => "Hello, ${userName}";

  static String m5(updatedDate) => "Last update at ${updatedDate}";

  static String m6(pageName) => "Page \'${pageName}\' not found in routes";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "HiPersonChooseWhatUWant": m0,
        "accountAlreadyExistsForThatEmail":
            MessageLookupByLibrary.simpleMessage(
                "The account already exists for that email."),
        "areYouSureYouWantToReturnBack": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to return back"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cantBeLessThan": m1,
        "cantBeMoreThan": m2,
        "clientTookTooLong": MessageLookupByLibrary.simpleMessage(
            "The client took too long to respond."),
        "clockInToBeginTheShift":
            MessageLookupByLibrary.simpleMessage("Clock in to begin the shift"),
        "clockInToEndTheShift":
            MessageLookupByLibrary.simpleMessage("Clock in to end the shift"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "connectedToInternet":
            MessageLookupByLibrary.simpleMessage("Connected to the internet"),
        "createYourOwnEmail":
            MessageLookupByLibrary.simpleMessage("Create your own email"),
        "createdAt": m3,
        "doNotHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account ? "),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "emailAddress": MessageLookupByLibrary.simpleMessage("Email address"),
        "enableService": MessageLookupByLibrary.simpleMessage("Enable Service"),
        "enterEmailAddress":
            MessageLookupByLibrary.simpleMessage("Enter email address"),
        "enterThePassword":
            MessageLookupByLibrary.simpleMessage("Enter the password"),
        "enterValidEmail":
            MessageLookupByLibrary.simpleMessage("Enter valid E-mail"),
        "enterYourCredentialsToContinue": MessageLookupByLibrary.simpleMessage(
            "Enter your credentials to continue."),
        "fillField": MessageLookupByLibrary.simpleMessage("fill this field"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("Forget password ? "),
        "goBack": MessageLookupByLibrary.simpleMessage("Go back"),
        "goodMorning": MessageLookupByLibrary.simpleMessage("Good morning"),
        "goodbye": MessageLookupByLibrary.simpleMessage("Good bye..."),
        "grantLocationAccess":
            MessageLookupByLibrary.simpleMessage("Allow Location Access"),
        "helloUserName": m4,
        "hidePassword": MessageLookupByLibrary.simpleMessage("Hide password"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "humanResourcesManagement":
            MessageLookupByLibrary.simpleMessage("Human resources management"),
        "ifYouReturnNowYouWillLoseAllData":
            MessageLookupByLibrary.simpleMessage(
                "If you return now, you will lose all data!"),
        "inText": MessageLookupByLibrary.simpleMessage("in"),
        "lastUpdatedAt": m5,
        "locationServiceDisabled": MessageLookupByLibrary.simpleMessage(
            "The location service on the device is disabled."),
        "logOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "logged": MessageLookupByLibrary.simpleMessage("Logged"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginToContinue":
            MessageLookupByLibrary.simpleMessage("Please log in to continue"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "needsSynchronization":
            MessageLookupByLibrary.simpleMessage("Needs synchronization"),
        "noData": MessageLookupByLibrary.simpleMessage("No Data"),
        "noInternetConnection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "noUserFoundForThatEmail": MessageLookupByLibrary.simpleMessage(
            "No user found for that email."),
        "notSamePass":
            MessageLookupByLibrary.simpleMessage("Not same password"),
        "outText": MessageLookupByLibrary.simpleMessage("out"),
        "pageNameNotFoundInRoutes": m6,
        "pageNotFound": MessageLookupByLibrary.simpleMessage("Page not found"),
        "pageNumberMustBiggerThan0": MessageLookupByLibrary.simpleMessage(
            "pageNumber must be bigger than 0"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordProvidedIsTooWeak": MessageLookupByLibrary.simpleMessage(
            "The password provided is too weak."),
        "pleaseClickHereToLogOut": MessageLookupByLibrary.simpleMessage(
            "Please click here to log out"),
        "pleaseClickHereToLogin":
            MessageLookupByLibrary.simpleMessage("Please click here to log in"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Press again to exit"),
        "recover": MessageLookupByLibrary.simpleMessage("Recover"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
        "requestLocationPermission": MessageLookupByLibrary.simpleMessage(
            "Please grant permission to access your device\'s location"),
        "returnBack": MessageLookupByLibrary.simpleMessage("Return back"),
        "serverTookTooLong": MessageLookupByLibrary.simpleMessage(
            "The server took too long to respond."),
        "serverTookTooLongToRespond": MessageLookupByLibrary.simpleMessage(
            "The server took too long to respond."),
        "showPassword": MessageLookupByLibrary.simpleMessage("Show password"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "sslCertificateNotTrusted": MessageLookupByLibrary.simpleMessage(
            "The SSL certificate is not trusted."),
        "startNow": MessageLookupByLibrary.simpleMessage("Start Now"),
        "stayHere": MessageLookupByLibrary.simpleMessage("Stay here"),
        "successfully": MessageLookupByLibrary.simpleMessage("successfully"),
        "theSuppliedAuthCredentialIsIncorrect":
            MessageLookupByLibrary.simpleMessage(
                "The supplied auth credential is incorrect, malformed or has expired."),
        "thereIsProblemWithServerTryAgainLater":
            MessageLookupByLibrary.simpleMessage(
                "There is a problem with the server. Try again later."),
        "timeMustBeMoreThan60Minutes": MessageLookupByLibrary.simpleMessage(
            "Time must be more than 60 minutes"),
        "timeOfEntry": MessageLookupByLibrary.simpleMessage("Time of entry"),
        "timeOfExit": MessageLookupByLibrary.simpleMessage("Time of exit"),
        "unauthorizedError": MessageLookupByLibrary.simpleMessage(
            "Your session has expired or you are not authorized. Please log in again."),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "unknownErrorOccurred":
            MessageLookupByLibrary.simpleMessage("An unknown error occurred."),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome..."),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome back"),
        "wrongPasswordProvidedForThatUser":
            MessageLookupByLibrary.simpleMessage(
                "Wrong password provided for that user.")
      };
}
