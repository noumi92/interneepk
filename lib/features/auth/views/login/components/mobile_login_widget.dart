import 'package:flutter/material.dart';

import 'login_form_widget.dart';
import 'login_image_widget.dart';

class MobileLoginWidget extends StatelessWidget {
  const MobileLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginImageWidget(),
        Row(
          children: [
            Spacer(),
            Expanded(
                flex: 8,
                child: LoginFormWidget()
            ),
            Spacer()
          ],
        )
      ],
    );
  }
}