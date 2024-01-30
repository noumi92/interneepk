import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/common/routes/routes_handler.dart';
import 'package:interneepk/features/auth/views/splash/splash_view.dart';
import 'package:interneepk/utils/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: NAppTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: SplashView(),
      getPages: RoutesHandler.routesHandler(),
    );
  }
}