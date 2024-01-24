import 'package:flutter/material.dart';
import 'package:interneepk/features/auth/views/register/register_view.dart';
import 'package:interneepk/utils/constants/colors.dart';
import 'package:interneepk/utils/constants/sizes.dart';

import '../../../../../common/components/account_check_widget.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: NColors.primary,
          onSaved: (email) {},
          decoration: const InputDecoration(
            hintText: "Your email",
            prefixIcon: Padding(
              padding: EdgeInsets.all(NSizes.defaultPadding),
              child: Icon(Icons.person),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: NSizes.defaultPadding),
          child: TextFormField(
            textInputAction: TextInputAction.done,
            obscureText: true,
            cursorColor: NColors.primary,
            decoration: const InputDecoration(
              hintText: "Your password",
              prefixIcon: Padding(
                padding: EdgeInsets.all(NSizes.defaultPadding),
                child: Icon(Icons.lock),
              ),
            ),
          ),
        ),
        const SizedBox(height: NSizes.defaultPadding),
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
        const SizedBox(height: NSizes.defaultPadding),
        AccountCheckWidget(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const RegisterView();
                },
              ),
            );
          },
        ),
      ],
    ));
  }
}
