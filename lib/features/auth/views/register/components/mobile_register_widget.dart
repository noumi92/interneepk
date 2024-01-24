import 'package:flutter/material.dart';

import 'register_form_widget.dart';
import 'register_image_widget.dart';
import 'social_form_widget.dart';

class MobileRegisterWidget extends StatelessWidget {
  const MobileRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RegisterImageWidget(),
        Row(
          children: [
            Spacer(),
            Expanded(
                flex: 8,
                child: RegisterFormWidget()
            ),
            Spacer()
          ],
        ),
        SocialFormWidget()
      ],
    );
  }
}