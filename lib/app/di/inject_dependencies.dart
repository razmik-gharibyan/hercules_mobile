import 'package:get_it/get_it.dart';
import 'package:hercules_mobile/app/di/inject_dependencies.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance();

@injectableInit
Future<void> injectDependencies() async => getIt.init;