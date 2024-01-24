import 'package:flutter/material.dart';
import 'package:interneepk/common/components/account_check_widget.dart';
import 'package:interneepk/features/auth/views/login/login_view.dart';
import 'package:interneepk/utils/constants/colors.dart';
import 'package:interneepk/utils/constants/sizes.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

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
              hintText: "Email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(NSizes.defaultPadding),
                child: Icon(Icons.person),
              )),
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
        const SizedBox(height: NSizes.defaultPadding / 2),
        ElevatedButton(
          onPressed: () {},
          child: Text("Sign Up".toUpperCase()),
        ),
        const SizedBox(height: NSizes.defaultPadding),
        AccountCheckWidget(
          login: false,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginView();
                },
              ),
            );
          },
        ),
      ],
    ));
  }
}
