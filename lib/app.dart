import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hercules_mobile/feature/landing_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  //final _navigatorKey = injector<NavigationService>().getNavigatorKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      ],
      child: MaterialApp(
        title: 'Hercules',
        debugShowCheckedModeBanner: false,
        home: LandingScreen(),
      ),
    );
  }
}
