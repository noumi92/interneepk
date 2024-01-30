import 'package:flutter/material.dart';
import 'package:interneepk/features/auth/viewmodels/login_view_model.dart';
import 'package:interneepk/features/auth/views/register/register_view.dart';
import 'package:interneepk/utils/constants/colors.dart';
import 'package:interneepk/utils/constants/sizes.dart';

import '../../../../../common/components/account_check_widget.dart';

class LoginFormWidget extends StatelessWidget {
  final LoginViewModel loginVM = LoginViewModel.get();
  final _formKey = GlobalKey<FormState>();
  LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Column(
      children: [
        TextFormField(
          controller: loginVM.emailController.value,
          focusNode: loginVM.emailFocusedNode.value,
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
            controller: loginVM.passwordController.value,
            focusNode: loginVM.passwordFocusedNode.value,
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
            onPressed: () {
              if(_formKey.currentState!.validate()){
                loginVM.login();
              }else{
                print("Form not validated");
              }
            },
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
