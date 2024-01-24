import 'package:flutter/material.dart';

import 'welcome_buttons.dart';
import 'welcome_image.dart';

class DesktopWelcomeWidget extends StatelessWidget {
  const DesktopWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: WelcomeImage()
        ),
        Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 450,
                    child: WelcomeButtons()
                ),
              ],
            )
        )
      ],
    );
  }
}