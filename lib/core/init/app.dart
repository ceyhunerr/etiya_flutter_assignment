
import 'package:land_measurement/core/init/app_dependencies.dart';
import 'package:land_measurement/core/init/app_routes.dart';
import 'package:land_measurement/core/init/app_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDependencies(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Etiya Flutter Assignment',
        theme: appTheme,
        darkTheme: darkTheme,
        routes: appRoutes,
      ),
    );
  }
}
