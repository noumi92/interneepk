import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/images.dart';

import 'divider_widget.dart';
import 'social_icon_widget.dart';

class SocialFormWidget extends StatelessWidget {
  const SocialFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialIconWidget(
              iconSrc: NImages.facebookSvg,
              press: () {},
            ),
            SocialIconWidget(
              iconSrc: NImages.twitterSvg,
              press: () {},
            ),
            SocialIconWidget(
              iconSrc: NImages.googleSvg,
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
