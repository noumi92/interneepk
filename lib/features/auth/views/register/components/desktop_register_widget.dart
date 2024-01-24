import 'package:flutter/material.dart';

import 'register_form_widget.dart';
import 'register_image_widget.dart';
import 'social_form_widget.dart';

class DesktopRegisterWidget extends StatelessWidget {
  const DesktopRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: RegisterImageWidget()),
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 450,
                    child: RegisterFormWidget()
                ),
                SocialFormWidget()
              ],
            )
        ),

      ],
    );
  }
}