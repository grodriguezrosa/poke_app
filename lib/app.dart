import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/dependency_injector.dart' as di;
import 'ui/utils/routes/routes_generator.dart';
import 'ui/utils/routes/routes_name.dart';

void launch() async {

  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeApp',
      initialRoute: Routes.splash,
      onGenerateRoute: AppRouterProvider.generateRoutes,
      navigatorKey: AppRouterProvider.navigatorKey,
    );
  }
}

