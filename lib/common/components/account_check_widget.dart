import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/colors.dart';

class AccountCheckWidget extends StatelessWidget {
  final bool login;
  final Function? press;
  const AccountCheckWidget({
    Key? key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: NColors.primary),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: NColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}