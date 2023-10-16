import 'package:flutter/widgets.dart';
import 'package:hercules_mobile/core/service/navigation_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: NavigationService)
class NavigationServiceImpl implements NavigationService {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  GlobalKey<NavigatorState> getNavigatorKey() {
    return _navigatorKey;
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
      String routeName, {
        Object? arguments,
      }) {
    return _navigatorKey.currentState!.pushNamed<T>(routeName, arguments: arguments);
  }

  @override
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
      String routeName, {
        TO? result,
        Object? arguments,
      }) {
    return _navigatorKey.currentState!.pushReplacementNamed<T, TO>(routeName, arguments: arguments);
  }

  @override
  Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
      String newRouteName,
      RoutePredicate predicate, {
        Object? arguments,
      }) {
    return _navigatorKey.currentState!.pushNamedAndRemoveUntil<T>(newRouteName, predicate, arguments: arguments);
  }

  @override
  Future<T?> push<T extends Object?>(Route<T> route) {
    return _navigatorKey.currentState!.push<T>(route);
  }

  @override
  Future<T?> pushReplacement<T extends Object?, TO extends Object?>(Route<T> route, {TO? result}) {
    return _navigatorKey.currentState!.pushReplacement<T, TO>(route);
  }

  @override
  Future<T?> pushAndRemoveUntil<T extends Object?>(Route<T> newRoute, RoutePredicate predicate) {
    return _navigatorKey.currentState!.pushAndRemoveUntil<T>(newRoute, predicate);
  }

  @override
  void pop<T extends Object?>([T? result]) {
    _navigatorKey.currentState!.pop<T>(result);
  }

  @override
  bool safePop<T extends Object?>([T? result]) {
    if (canPop()) {
      _navigatorKey.currentState!.pop<T>(result);
      return true;
    }

    return false;
  }

  @override
  bool canPop() {
    return _navigatorKey.currentState!.canPop();
  }

  @override
  void popUntil(final RoutePredicate predicate) {
    _navigatorKey.currentState!.popUntil(predicate);
  }
}
