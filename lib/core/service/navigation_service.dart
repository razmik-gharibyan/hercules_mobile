import 'package:flutter/widgets.dart';

abstract class NavigationService {
  GlobalKey<NavigatorState> getNavigatorKey();

  Future<T?> pushNamed<T extends Object?>(String routeName, {Object? arguments});

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(String routeName, {TO? result, Object? arguments});

  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(String newRouteName, RoutePredicate predicate,
      {Object? arguments});

  Future<T?> push<T extends Object?>(Route<T> route);

  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(Route<T> route, {TO? result});

  Future<T?> pushAndRemoveUntil<T extends Object?>(Route<T> newRoute, RoutePredicate predicate);

  void pop<T extends Object?>([T? result]);

  bool canPop();

  bool safePop<T extends Object?>([T? result]);

  void popUntil(final RoutePredicate predicate);
}
