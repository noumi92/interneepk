import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interneepk/common/routes/routes_names.dart';
import 'package:interneepk/features/auth/views/login/login_view.dart';
import 'package:interneepk/features/auth/views/register/register_view.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: "login_button",
            child: ElevatedButton(
              onPressed: (){
                Get.offAndToNamed(RoutesNames.loginView);
              },
              child: const Text("LOGIN"),
            )
        ),
        const SizedBox(height: 16,),
        ElevatedButton(
          onPressed: (){
            Get.offAndToNamed(RoutesNames.registerView);
          },
          child: const Text("SIGN UP"),
        )
      ],
    );
  }
}
