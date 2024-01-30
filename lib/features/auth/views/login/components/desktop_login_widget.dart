import 'package:flutter/material.dart';

import 'login_form_widget.dart';
import 'login_image_widget.dart';

class DesktopLoginWidget extends StatelessWidget {
  const DesktopLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: LoginImageWidget()
        ),
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 450,
                    child: LoginFormWidget()
                ),
              ],
            )
        )
      ],
    );
  }
}