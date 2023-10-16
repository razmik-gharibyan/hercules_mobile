import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hercules_mobile/app/di/inject_dependencies.dart';
import 'package:hercules_mobile/core/service/navigation_service.dart';
import 'package:hercules_mobile/feature/landing/landing_screen.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _navigatorKey = getIt<NavigationService>().getNavigatorKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      ],
      child: MaterialApp(
        title: 'Hercules',
        debugShowCheckedModeBanner: false,
        navigatorKey: _navigatorKey,
        home: LandingScreen(),
      ),
    );
  }
}
