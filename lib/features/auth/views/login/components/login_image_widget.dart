import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interneepk/utils/constants/images.dart';
import 'package:interneepk/utils/constants/sizes.dart';

class LoginImageWidget extends StatelessWidget {
  const LoginImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("LOGIN"),
        const SizedBox(height: NSizes.defaultPadding * 2,),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
                child: SvgPicture.asset(NImages.loginSvg)
            ),
            const Spacer()
          ],
        ),
        const SizedBox(height: NSizes.defaultPadding * 2,)
      ],
    );
  }
}
