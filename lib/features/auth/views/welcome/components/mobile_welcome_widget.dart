import 'package:flutter/material.dart';

import 'welcome_buttons.dart';
import 'welcome_image.dart';

class MobileWelcomeWidget extends StatelessWidget {
  const MobileWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
                flex: 8,
                child: WelcomeButtons()
            ),
            Spacer()
          ],
        )
      ],
    );
  }
}