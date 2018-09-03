import 'package:flutter/material.dart';
import 'package:xfocus_mobile/screen/sign_up/choose_credentials.dart';
import 'package:xfocus_mobile/screen/sign_up/collect_personal_info.dart';

routeGenerator (RouteSettings settings, BuildContext context) {
  WidgetBuilder builder;
  switch (settings.name) {
    case '/sign_up/personal_info':
      // Assume CollectPersonalInfoPage collects personal info and then
      // navigates to 'sign_up/choose_credentials'.
      builder = (BuildContext _) => CollectPersonalInfo();
      break;
    case '/sign_up/choose_credentials':
      // Assume ChooseCredentialsPage collects new credentials and then
      // invokes 'onSignupComplete()'.
      builder = (BuildContext _) => ChooseCredentials(
            onSignupComplete: () {
              // Referencing Navigator.of(context) from here refers to the
              // top level Navigator because SignUp is above the
              // nested Navigator that it created. Therefore, this pop()
              // will pop the entire "sign up" journey and return to the
              // "/" route, AKA HomePage.
              Navigator.of(context).pop();
            },
          );
      break;
    default:
      throw Exception('Invalid route: ${settings.name}');
  }
  return MaterialPageRoute(builder: builder, settings: settings);
}