import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/features/auth/viewmodels/splash_view_model.dart';

class SplashView extends StatelessWidget {
  final splashViewModel = Get.put(SplashViewModel());
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    splashViewModel.checkLogin();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
              image: AssetImage("assets/images/splash.png"),
              height: 200,
            width: 200,
          ),
          const SizedBox(height: 16,),
          Center(child: Text("Welcome to Internee.PK", style: Theme.of(context).textTheme.headlineMedium,),)
        ],
      ),
    );
  }
}
