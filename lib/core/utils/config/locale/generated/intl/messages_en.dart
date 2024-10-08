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

  static String m4(updatedDate) => "Last update at ${updatedDate}";

  static String m5(pageName) => "Page \'${pageName}\' not found in routes";

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
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm Password"),
        "createYourOwnEmail":
            MessageLookupByLibrary.simpleMessage("Create your own email"),
        "createdAt": m3,
        "doNotHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account ? "),
        "emailAddress": MessageLookupByLibrary.simpleMessage("Email address"),
        "enterValidEmail":
            MessageLookupByLibrary.simpleMessage("Enter valid E-mail"),
        "enterYourCredentialsToContinue": MessageLookupByLibrary.simpleMessage(
            "Enter your credentials to continue."),
        "fillField": MessageLookupByLibrary.simpleMessage("fill this field"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("Forget password ? "),
        "goBack": MessageLookupByLibrary.simpleMessage("Go back"),
        "hidePassword": MessageLookupByLibrary.simpleMessage("Hide password"),
        "home": MessageLookupByLibrary.simpleMessage("Home"),
        "humanResourcesManagement":
            MessageLookupByLibrary.simpleMessage("Human resources management"),
        "ifYouReturnNowYouWillLoseAllData":
            MessageLookupByLibrary.simpleMessage(
                "If you return now, you will lose all data!"),
        "lastUpdatedAt": m4,
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "needsSynchronization":
            MessageLookupByLibrary.simpleMessage("Needs synchronization"),
        "noData": MessageLookupByLibrary.simpleMessage("No Data"),
        "noInternet": MessageLookupByLibrary.simpleMessage("No internet"),
        "noUserFoundForThatEmail": MessageLookupByLibrary.simpleMessage(
            "No user found for that email."),
        "notSamePass":
            MessageLookupByLibrary.simpleMessage("Not same password"),
        "pageNameNotFoundInRoutes": m5,
        "pageNotFound": MessageLookupByLibrary.simpleMessage("Page not found"),
        "pageNumberMustBiggerThan0": MessageLookupByLibrary.simpleMessage(
            "pageNumber must be bigger than 0"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordProvidedIsTooWeak": MessageLookupByLibrary.simpleMessage(
            "The password provided is too weak."),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Press again to exit"),
        "recover": MessageLookupByLibrary.simpleMessage("Recover"),
        "rememberMe": MessageLookupByLibrary.simpleMessage("Remember me"),
        "returnBack": MessageLookupByLibrary.simpleMessage("Return back"),
        "showPassword": MessageLookupByLibrary.simpleMessage("Show password"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "startNow": MessageLookupByLibrary.simpleMessage("Start Now"),
        "stayHere": MessageLookupByLibrary.simpleMessage("Stay here"),
        "theSuppliedAuthCredentialIsIncorrect":
            MessageLookupByLibrary.simpleMessage(
                "The supplied auth credential is incorrect, malformed or has expired."),
        "unknown": MessageLookupByLibrary.simpleMessage("Unknown"),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "welcomeBack": MessageLookupByLibrary.simpleMessage("Welcome back"),
        "wrongPasswordProvidedForThatUser":
            MessageLookupByLibrary.simpleMessage(
                "Wrong password provided for that user.")
      };
}
