import 'package:flutter/material.dart';
import 'package:interneepk/features/auth/views/welcome/welcome_view.dart';
import 'package:interneepk/utils/themes/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: NAppTheme.lightTheme,
      home: const WelcomeView(),
    );
  }
}