import 'package:flutter/material.dart';
import 'package:interneepk/features/counter/viewmodels/counter_provider.dart';
import 'package:interneepk/features/counter/views/counter_view.dart';
import 'package:interneepk/utils/themes/theme.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: NAppTheme.lightTheme,
        home: const CounterView(),
      ),
    );
  }
}