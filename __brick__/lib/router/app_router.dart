import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppRouter {
  //TODO:: add the routes of the app
  static const rootScreen = '/';

  static Route getRoute({required Widget Function(BuildContext) builder}) =>
      Platform.isAndroid
          ? MaterialPageRoute(builder: builder)
          : CupertinoPageRoute(builder: builder);

  static Route onGenerateRoute(RouteSettings settings) {
    final Route route;
    switch (settings.name) {
      //TODO:: handle routes logic
      case AppRouter.rootScreen:
        route = getRoute(builder: (_) => const SizedBox());
        break;
      default:
        route = getRoute(builder: (_) => const SizedBox());
    }
    return route;
  }
}
